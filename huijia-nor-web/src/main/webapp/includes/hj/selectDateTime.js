/**
 * Created by cloudoo on 2017/6/8.
 */

$("#privatebook").on(
    'click',function(){
        $("#selectCourseForm").submit();
    }
);

$("#selectTime").on(
    'click',function(){
        var courseId = $(this).children("input").val();
        $("#courseId").val(courseId);
    }
);
