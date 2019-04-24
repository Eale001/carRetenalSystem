function F(o){return document.getElementById(o);}
function txtgetCityOnClick(){
    F("divgetStore").style.display = "none";
    F("divretCity").style.display  = "none";
    F("divretStore").style.display = "none";
    var cityHtml = "<p>选择区域 [<a href='#' onclick='F(\"divgetCity\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(cityData)
    {
        for(var i = 0; i < cityData.Rows.length; i++)
            temp += "<li><a href='#' onclick=\"getCityOnClick(" + cityData.Rows[i].id + ",'" + cityData.Rows[i].name + "')\">" + cityData.Rows[i].name + "</a></li>";
    }
    if(temp) cityHtml += "<ul class='list'>" + temp + "</ul>";
    else cityHtml += "暂无";


    var divgetCity = F("divgetCity");
    divgetCity.innerHTML = cityHtml + "<div class='clear'></div><div class='clear'></div>";
    divgetCity.style.display = "block";
}
function getCityOnClick(id,name){
    F("getCity").value = name;
    F("CityID").value = id;
    F("retCity").value = name;
    F("retCityID").value = id;
    F("divgetCity").style.display = "none";
}
function txtgetStoreOnClick(){

    F("divgetCity").style.display  = "none";
    F("divretCity").style.display  = "none";
    F("divretStore").style.display = "none";

    var cityID = F("CityID").value;
    var storeHtml = "<p>选择门店 [<a href='#' onclick='F(\"divgetStore\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(cityID>0)
    {
        var temp = "";
        if(storeData){
            for(var i = 0; i < storeData.Rows.length; i++)
                if(storeData.Rows[i].TopID == cityID)
                    temp += "<li><a href='#' onclick=\"getStoreOnClick(" + storeData.Rows[i].id + ",'" + storeData.Rows[i].name + "')\">" + storeData.Rows[i].name + "</a><span>[" + storeData.Rows[i].carnum + "]</span></li>";
        }
        if(temp) storeHtml += "<ul class='list'>" + temp + "</ul>";
        else storeHtml += "暂无门店信息";
    }else{
        storeHtml += "请选择区域";
    }
    var divgetStore = F("divgetStore");
    divgetStore.innerHTML = storeHtml + "<div class='clear'></div><div class='clear'></div>";
    divgetStore.style.display = "block";
}
function getStoreOnClick(id,name){
    F("getStore").value = name;
    F("StoreID").value = id;
    F("retStore").value = name;
    F("retStoreID").value = id;
    F("divgetStore").style.display = "none";
}
function stopBubble(e)
{
    if(!document.all)
    {
        e.stopPropagation();
        e.preventDefault();
    }
    else
    {
        event.cancelBubble = true;
        event.returnValue = false;
    }
}
document.onclick = function(e)
{
    e = window.event || e;
    var srcElement = e.srcElement || e.target;
    F("divgetCity").style.display = "none";
    F("divgetStore").style.display = "none";
    F("divretCity").style.display = "none";
    F("divretStore").style.display = "none";
};