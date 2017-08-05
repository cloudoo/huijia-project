/**
 * Created by cloudpj on 17/8/5.
 */
$(document).ready(function () {

    $.ajax({

        type: "GET",
        url: "sliderpage.aj",
        dataType:"html",
        cache:"false",
        success : function(data) {

            $("#sidebar").html(data);
        },
        error: function (date) {
            alert("error");
        }
    });


})
