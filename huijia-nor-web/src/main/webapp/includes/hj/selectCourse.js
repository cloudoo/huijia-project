
var ajaxCourseId = "3ce07b33f20942b2a11c71005ea582e9";
var cases = $('.book-case');
var labelSelect = $('label.book-select').on('change', 'input', function(e) {
    if (this.checked)
    {
        cases.removeClass('case-selected');
        $(this).closest('.book-case').addClass('case-selected');
        ajaxCourseId = $(this).val();
    }
});

