/**
 * Created by cloudpj on 17/7/2.
 */

$(document).ready(function () {
    $('#simpledatatable').DataTable({
        "ajax": {
            "url": '../traineer/ajaxlist.aj',
            "dataSrc": ""
        },
        "columns": [
            {"data": "id"},
            {"data": "wxOpenId"},
            {"data": "name"},
            {"data": "gender"},
            {"data": "cellphone"},
            {"data": "shopInfo"},
            {"data": "identit"},
            {"data": "coacherId"},
            {
                "data":"id",
                "render": function ( data, type, row ) {
                    return   "<a href='../traineer/toedit.hj?id="+data+"' class='btn btn-info btn-xs edit'><i class='fa fa-edit'></i> 编辑</a>"
                        +"<a href='#' class='btn btn-danger btn-xs delete'><i class='fa fa-trash-o'></i> 禁止</a>"
                        +" </td>";
                }
            }
        ]
    });
});


