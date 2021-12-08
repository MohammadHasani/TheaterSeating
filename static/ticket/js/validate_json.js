jQuery(document).ready(function ($) {
    var is_json;
    var is_valid;
    console.log('hereasdasd');

    function IsJsonString(str) {
        try {
            JSON.parse(str);
            is_json = true;
        } catch (e) {
            is_json = false;
            return is_json;
        }
        return is_json;
    }

    $('.input_json').bind('input propertychange', function () {

        is_valid = IsJsonString($(this).val());
        if (is_valid) {
            $('.submit_json').attr("disabled", false);
        } else {
            $('.submit_json').attr("disabled", true);
        }
    });
});