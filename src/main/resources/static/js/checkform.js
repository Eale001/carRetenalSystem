function checkform1(){
    if (document.form1.getCity.value == "") {
        alert("取车门店不能为空");
        document.form1.getCity.focus();
        return false;
    }
    if (document.form1.getStore.value == "") {
        alert("取车门店不能为空");
        document.form1.getStore.focus();
        return false;
    }
    if (document.form1.retCity.value == "") {
        alert("还车门店不能为空");
        document.form1.retCity.focus();
        return false;
    }
    if (document.form1.retStore.value == "") {
        alert("还车门店不能为空");
        document.form1.retStore.focus();
        return false;
    }

}
function CheckSubmit()
{
    if(document.myform.ContactMan.value=="")
    {
        alert("姓名不能为空！");
        document.myform.ContactMan.focus();
        return false;
    }
    if(document.myform.Mobile.value=="")
    {
        alert("手机不能为空！");
        document.myform.Mobile.focus();
        return false;
    }
    if(document.myform.CardNumber.value=="")
    {
        alert("证件号不能为空！");
        document.myform.CardNumber.focus();
        return false;
    }
}
function switchShow(tag){
    var tObj =  document.getElementById("tab"+tag);
    var priceCount =parseInt($("#pricetext").text());
    var price = parseInt($("#price"+tag).text());

    if(tObj) tObj.className =(tObj.className=='none') ? "" : "none";

    if(tObj.className!='none'){
        $("#pricetext").text(priceCount+price);
    }else{
        $("#pricetext").text(priceCount-price);
    }
}