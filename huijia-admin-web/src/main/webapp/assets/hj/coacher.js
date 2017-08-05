/**
 * Created by cloudpj on 17/7/2.
 */
$(document).ready(function () {
    $('#simpledatatable').DataTable({
        "ajax": {
            "url": '../coacher/ajaxlist.aj',
            "dataSrc": ""
        },
        "columns": [
            {"data": "id"},
            {"data": "order"},
            {"data": "name"},
            {"data": "gender"},
            {"data": "cellphone"},
            {"data": "shopInfo"},
            {"data": "status"},
            {
                "data":"id",
                "render": function ( data, type, row ) {
                    return   "<a href='coacher/toedit.hj?id="+data+"' class='btn btn-info btn-xs edit'><i class='fa fa-edit'></i> 编辑</a>"
                        +"<a href='#' class='btn btn-danger btn-xs delete'><i class='fa fa-trash-o'></i> 禁用</a>"
                        +" </td>";
                }
            }
        ]
    });
});
