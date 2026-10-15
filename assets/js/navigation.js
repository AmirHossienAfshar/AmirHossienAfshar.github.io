$(function () {
    // Close the collapsed (mobile) menu after a section has been chosen.
    $('#navbarResponsive .nav-link').on('click', function () {
        $('#navbarResponsive').collapse('hide');
    });
});
