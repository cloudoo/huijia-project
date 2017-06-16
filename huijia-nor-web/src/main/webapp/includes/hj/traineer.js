/**
 * Created by cloudoo on 2017/6/13.
 */

function selectItem(modalId, obj, objVal, ojb2, objVal2) {
    $('#' + obj).val(objVal);
    $('#' + ojb2).html(objVal2);
    $('#' + modalId).modal('hide');
}

function selectShopItem(modalId, obj, objVal, ojb2, objVal2) {
    $('#' + obj).val(objVal);
    $('#' + ojb2).html(objVal2);
    $('#' + modalId).modal('hide');
    $.ajax({
        type: "POST",
        url: "../shop/getinfohtml.aj",
        data: {shopId: objVal},
        dataType: "html",
        success: function (data) {
            $('#ajaxCoachList').html(data);
        }
    });
}


$(function () {
    // 出生日期
    var currYear = (new Date()).getFullYear();
    var opt = {
        preset: 'date',
        theme: 'mobiscroll',    // 皮肤样式
        display: 'bottom',      // 显示方式
        mode: 'scroller',       // 日期选择模式
        dateFormat: 'yyyy-mm-dd',
        defValue: '1985-01-01',
        showNow: false,
        startYear: currYear - 80,   // 开始年份
        endYear: currYear,          // 结束年份
        setText: '确定',
        cancelText: '取消'
    };
    $("#birthday").mobiscroll(opt);

    // 健身需求
    $("#fitGoalButton").on("click", function () {
        var fitGoalHtml = '', fitGoalVal = '', fitGoalText = '', count = 0;
        var checks = $(":input[name=fitGoal]");
        for (var i = 0; i < checks.length; i++) {
            if (checks[i].checked == true) {
                count += 1;
            }
        }

        if (count == 0) {
            fitGoalHtml += '<input type="hidden" name="profile[fitGoal][]" value="' + fitGoalVal + '" checked="checked">';
        }
        else {
            $(":input[name=fitGoal]:checked").each(function (i) {
                fitGoalVal = $(this).val();
                fitGoalText = $(this).attr('data-value');
                fitGoalHtml += '<input type="hidden" name="profile[fitGoal][]" value="' + fitGoalVal + '" checked="checked">';
                fitGoalHtml += '<div class="demand">'
                    + fitGoalText
                    + '</div> '
            });
        }

        $('#fitGoalText').html(fitGoalHtml);
        $("#fitGoalModal").modal('hide');
    });
});

var ajaxSubmit = function(){
     var value = $("#cellphone").val();
     var reg = /^d{13}$/;
     if(value.length==0){
         alert("请填入手机号");
         return;
     }
     if(reg.test(value)==false){
         alert("请填写正确手机号");
     }else{
         $("#ajax_form").submit();
     }

}

