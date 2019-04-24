function txtretCityOnClick(){
    F("divretStore").style.display = "none";
    F("divgetCity").style.display = "none";
    F("divgetStore").style.display = "none";

    var cityHtml = "<p>选择区域 [<a href='#' onclick='F(\"divretCity\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(cityData)
    {
        for(var i = 0; i < cityData.Rows.length; i++)
            temp += "<li><a href='#' onclick=\"retCityOnClick(" + cityData.Rows[i].id + ",'" + cityData.Rows[i].name + "')\">" + cityData.Rows[i].name + "</a></li>";
    }
    if(temp) cityHtml += "<ul class='list'>" + temp + "</ul>";
    else cityHtml += "暂无";


    var divretCity = F("divretCity");
    divretCity.innerHTML = cityHtml + "<div class='clear'></div><div class='clear'></div>";
    divretCity.style.display = "block";
}
function retCityOnClick(id,name){
    F("retCity").value = name;
    F("retCityID").value = id;
    F("divretCity").style.display = "none";
}
function txtretStoreOnClick(){

    F("divretCity").style.display = "none";
    F("divgetCity").style.display = "none";
    F("divgetStore").style.display = "none";

    var cityID = F("retCityID").value;
    var storeHtml = "<p>选择门店 [<a href='#' onclick='F(\"divretStore\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(cityID>0)
    {
        var temp = "";
        if(storeData){
            for(var i = 0; i < storeData.Rows.length; i++)
                if(storeData.Rows[i].TopID == cityID)
                    temp += "<li><a href='#' onclick=\"retStoreOnClick(" + storeData.Rows[i].id + ",'" + storeData.Rows[i].name + "')\">" + storeData.Rows[i].name + "</a><span>[" + storeData.Rows[i].carnum + "]</span></li>";
        }
        if(temp) storeHtml += "<ul class='list'>" + temp + "</ul>";
        else storeHtml += "暂无门店信息";
    }else{
        storeHtml += "请选择区域";
    }
    var divretStore = F("divretStore");
    divretStore.innerHTML = storeHtml + "<div class='clear'></div><div class='clear'></div>";
    divretStore.style.display = "block";
}
function retStoreOnClick(id,name){
    F("retStore").value = name;
    F("retStoreID").value = id;
    F("divretStore").style.display = "none";
}
