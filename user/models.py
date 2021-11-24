from django.contrib.auth.base_user import AbstractBaseUser
from django.core.validators import MinLengthValidator, RegexValidator
from django.db import models
from django.forms.models import model_to_dict
from django.utils.translation import ugettext_lazy as _
from model_utils import Choices

from .manager import UserManager


# from publics.exceptions import ExpiredOneTimePassword, IncorrectOneTimePassword
# from publics.constants import DEPLOY_DOMAIN
#
#
# from random import randint
# from rest_framework import exceptions as drf_exceptions


class User(AbstractBaseUser):
    SENSITIVE_FIELDS_IN_AUTHORIZATION = ['first_name', 'last_name']

    REGULAR = 1
    ADMIN = 2

    USER_ROLE_CHOICES = Choices(
        (1, 'REGULAR', _('Regular')),
        (2, 'ADMIN', _('Admin'))
    )

    FEMALE, MALE = range(2)

    GENDER_CHOICE = Choices(
        (0, 'FEMALE', _('Female')),
        (1, 'MALE', _('Male'))
    )

    objects = UserManager()

    USERNAME_FIELD = 'email'

    email = models.EmailField(null=False, blank=False, unique=True)

    phone_number = models.CharField(_('phone number'), db_index=True, max_length=11,
                                    validators=[MinLengthValidator(11),
                                                RegexValidator(message=_("your phone number is incorrect"),
                                                               regex="^09\d{9}$")], unique=True, null=True)
    password = models.CharField(_('password'), max_length=128)

    first_name = models.CharField(_('First Name'), max_length=50, null=True, blank=True)
    last_name = models.CharField(_('Last Name'), max_length=100, null=True, blank=True)

    profile_picture = models.ImageField(null=True, blank=True, upload_to='user_data/profile_picture/')

    role = models.PositiveSmallIntegerField(choices=USER_ROLE_CHOICES, default=REGULAR)

    birth_date = models.DateField(null=True, blank=True)
    gender = models.PositiveSmallIntegerField(choices=GENDER_CHOICE, null=True, blank=True)

    one_time_password = models.CharField(_('one time password'), max_length=100, null=True, blank=True)
    one_time_password_creation_date = models.DateTimeField(_('one time password creation date'), null=True, blank=True)

    is_banned = models.BooleanField(_('is banned'), default=False)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    # For django's built-in superusers
    is_admin = models.BooleanField(_('admin status'), default=False)

    # Is active field tells if user is an active user or is a previous user of the system.
    # If user is inactive he/she only can view related data.
    is_active = models.BooleanField(_('active'), default=True)

    # Is verified field tells if user has verified his/her phone number or not.
    is_verified = models.BooleanField(_('verified'), default=False)

    def __init__(self, *args, **kwargs):
        super(User, self).__init__(*args, **kwargs)
        self.__initial = self._dict

    @property
    def is_staff(self):
        "Is the user a member of staff?"
        # Simplest possible answer: All admins are staff
        return self.is_admin

    @property
    def is_superuser(self):
        return self.is_admin

    @property
    def _dict(self):
        return model_to_dict(self, fields=[field.name for field in
                                           self._meta.fields])

    @property
    def diff(self):
        d1 = self.__initial
        d2 = self._dict
        diffs = []
        for k, v in d1.items():
            if k not in d2:
                diffs.append((k, (v, d1[k])))

                # continue for prevent error
                continue

            if v != d2[k]:
                diffs.append((k, (v, d2[k])))

        return dict(diffs)

    @property
    def has_changed(self):
        return bool(self.diff)

    @property
    def changed_fields(self):
        return self.diff.keys()

    def get_field_diff(self, field_name):
        """
        Returns a diff for field if it's changed and None otherwise.
        """
        return self.diff.get(field_name, None)

    def save(self, *args, **kwargs):
        """
        Saves model and set initial state.
        """
        super(User, self).save(*args, **kwargs)
        self.__initial = self.__dict__

    def has_perm(self, perm, obj=None):
        "Does the user have a specific permission?"
        # Simplest possible answer: Yes, always
        return True

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?"
        # Simplest possible answer: Yes, always
        return True

    class Meta:
        verbose_name = _('user')
        verbose_name_plural = _('users')

    def __str__(self):
        return self.email
    #
    # @property
    # def get_profile_picture(self):
    #     if self.profile_picture:
    #         return DEPLOY_DOMAIN + self.profile_picture.url
    #     return None
    #

    #
    # def active_user(self):
    #     self.is_active = True
    #     self.save()
    #     return self
    #
    # def create(self, validated_data):
    #     """
    #     Create and return a new `User` instance, given the validated data.
    #     """
    #     return Users.objects.create(**validated_data)
    #
    # def update(self, instance, validated_data):
    #     """
    #     Update and return an existing `Snippet` instance, given the validated data.
    #     """
    #     instance.profile_picture = validated_data.get('code', instance.profile_picture)
    #     instance.birthday_date = validated_data.get('linenos', instance.birthday_date)
    #     instance.role = validated_data.get('language', instance.role)
    #     instance.mobile_number_varified = validated_data.get('style', instance.mobile_number_varified)
    #     instance.gender = validated_data.get('style', instance.gender)
    #     instance.one_time_password = validated_data.get('style', instance.one_time_password)
    #
    #     instance.save()
    #     return instance
    #
    # @staticmethod
    # def create_one_time_pin(digit_count=6):
    #     start = int("1" + ("0" * (digit_count - 1)))
    #     stop = int("9" * digit_count)
    #     return secrets.choice(range(start, stop))
    #
    # def assign_one_time_password(self):
    #     # TODO have to be separated to two function
    #     one_time_pin = self.create_one_time_pin()
    #     self.one_time_password = make_password(one_time_pin)
    #     self.one_time_password_creation_date = datetime.datetime.utcnow()
    #     self.save()
    #     return one_time_pin
    #
    # def update_user_with_new_one_time_password(self):
    #     # create a 6 digit confirmation code as one_time_password
    #     rand_int = randint(128769, 768490)
    #     # print(rand_int)
    #     one_time_password = make_password(rand_int)
    #     # save it in db
    #     self.one_time_password = one_time_password
    #     self.one_time_password_creation_date = datetime.datetime.utcnow()
    #     self.save()
    #
    #     return rand_int
    #
    # @staticmethod
    # def is_phone_number_correct(phone_number):
    #     phone_number = Users.correct_phone_number_structure(phone_number)
    #     pattern = re.compile("^09\d{9}$")
    #     if phone_number:
    #         return bool(pattern.match(phone_number))
    #     return False
    #
    # @staticmethod
    # def correct_phone_number_structure(phone_number):
    #     pattern_1 = re.compile("^9\d{9}$")
    #     pattern_2 = re.compile("^09\d{9}$")
    #     pattern_3 = re.compile("^00989\d{9}$")
    #     pattern_4 = re.compile("^\+989\d{9}$")
    #
    #     if bool(pattern_1.match(phone_number)):
    #         return "0" + phone_number
    #     if bool(pattern_2.match(phone_number)):
    #         return phone_number
    #     if bool(pattern_3.match(phone_number)):
    #         return "0" + phone_number[4:]
    #     if bool(pattern_4.match(phone_number)):
    #         return "0" + phone_number[3:]
    #
    #     # just for readability
    #     return False
    #
    # @staticmethod
    # def check_if_phone_number_correct(phone_number):
    #     # this method use for cases we dont want to check and catch exception directly. for example in views
    #     if not Users.is_phone_number_correct(phone_number):
    #         raise drf_exceptions.ValidationError({'detail': _('your phone number is not correct.enter a correct one.')})
    #
    # def check_if_one_time_password_valid(self, one_time_password):
    #     if not self.one_time_password or not self.one_time_password_creation_date:
    #         raise ExpiredOneTimePassword
    #
    #     one_time_password_creation_date = self.one_time_password_creation_date.replace(tzinfo=None)
    #     # TODO create as a helper function
    #     if not datetime.datetime.utcnow() - one_time_password_creation_date < datetime.timedelta(
    #             minutes=15):  # TODO it's not work
    #         raise ExpiredOneTimePassword
    #
    #     if not check_password(one_time_password, self.one_time_password):
    #         raise IncorrectOneTimePassword
    #
    #     return
    #
    # def erase_one_time_password(self):
    #     self.one_time_password = None
    #     return self.save()
    #
    # @staticmethod
    # def get_user_by_phone_number(phone_number):
    #     return Users.objects.filter(phone_number=phone_number).first()
    #
