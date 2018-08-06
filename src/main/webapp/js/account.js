/**
 * Created by lp on 2018/6/23.
 */

/**
 * 多条件搜索
 */
function searchAccountsByParams() {
    var aname=$("#aname").val();
    var type=$("#type").combobox("getValue");
    var time=$("#time").datebox("getValue");
    console.log(type+"--"+time);
    $("#dg").datagrid("load",{
        aname:aname,
        type:type,
        time:time
    })
}

