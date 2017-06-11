
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

$('#checkBook').on('click',function () {

    var selectdate = $('#selectdate').val();
    var time = $('#time').val();


    $.ajax(
        {

            type : "POST",
            url : "/course/checkBook.aj",
            data:{
                selectdate:selectdate,
                time:time,
                courseId:ajaxCourseId
            },
            dataType : 'json',
            cache : false,
            beforeSend:function(){
                $('.book-tip').text("正在检查预定状态.....");
            },
            success : function(data) {

                if (data) {

                    var datas = data.result;
                    $('.book-tip').text(datas);

                    if (data != null && data.success == true  ){
                       $('form').submit();
                       //  alert(data.result);
                    }else{
                        $('.book-tip').text(datas);
                    }

                }
            },
            error : function(data) {

                var datas = data.result;
                $('.book-tip').text(datas);
            }
        }
    );
});

