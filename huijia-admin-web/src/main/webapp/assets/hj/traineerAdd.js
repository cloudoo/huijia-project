/**
 * Created by cloudpj on 17/7/2.
 */

var checkFrom  = function (){

    var name = $("#userameInput").val();
    if(name.length == 0){
        alert("请输入姓名");
        return false;
    }

    var cellphone = $("#cellphoneInput").val();
    if(cellphone.length == 0){
        alert("请输入手机号");
        return false;
    }

    return true;

}

$("#subbtn").on('click',function () {

    if(checkFrom()){
        $("#addForm").submit();
    }
});



