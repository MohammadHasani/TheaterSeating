jQuery(document).ready(function ($) {
$(".introduction").hide();

    $(".img-container").mouseover(function () {
        $(".introduction").fadeIn(410);
    });

    $(".img-container").mouseleave(function () {
        $(".introduction").fadeOut(410);
    });
});