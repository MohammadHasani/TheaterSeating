from django.contrib.auth.base_user import BaseUserManager


class UserManager(BaseUserManager):
    use_in_migrations = True

    def create_user(self, email, is_active, role, password=None):
        """
        Creates and saves a user with national id and password.
        :param phone_number:
        :param is_active:
        :param role:
        :param password:
        :param extra_fields:
        :return: user object
        """

        if not email:
            raise ValueError('Email is required.')
        if not role:
            role = 1
        if role not in (1,2):
            raise ValueError('Role not defined.')
        if not is_active:
            is_active = False

        user = self.model(email=email, is_active=is_active, role=role)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password):
        user = self.create_user(email, True, 2, password)
        user.is_admin = True
        user.save(using=self._db)
        return user
