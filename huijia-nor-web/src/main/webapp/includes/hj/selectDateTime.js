/**
 * Created by cloudoo on 2017/6/8.
 */

$("#privatebook").on(
    'click',function(){
        $("#selectCourseForm").submit();
    }
);

var today = $('#today').val();
$("#selectdate").val(today);
// $("a").on(
//     'click',function(){
//         var time = $(this).children("span").text();
//         $("#time").val(time);
//     }
// );
