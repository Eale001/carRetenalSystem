
function F(o){return document.getElementById(o);}
function getStoreOnClick(){
    F("divretStore").style.display = "none";
    var cityHtml = "<p>选择取车门店 [<a href='#' onclick='F(\"divgetStore\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(busData)
    {
        for(var i = 0; i < busData.Rows.length; i++)
            temp += "<li><a href='#' onclick=\"getOnClick(" + busData.Rows[i].ID + ",'" + busData.Rows[i].Name + "',"+ busData.Rows[i].CityPrice +")\">" + busData.Rows[i].Name + "</a></li>";
    }
    if(temp) cityHtml += "<ul class='list'>" + temp + "</ul>";
    else cityHtml += "暂无";


    var divgetStore = F("divgetStore");
    divgetStore.innerHTML = cityHtml + "<div class='clear'></div><div class='clear'></div>";
    divgetStore.style.display = "block";
}
function getOnClick(id,name,price){
    F("getcityname").value = name;
    F("getcity").value = id;
   // F("cityprice").innerHTML = price;
    F("divgetStore").style.display = "none";
}
function retStoreOnClick(){
    F("divgetStore").style.display = "none";
    var cityHtml = "<p>选择还车门店 [<a href='#' onclick='F(\"divretStore\").style.display=\"none\";' class='link_179884'>关闭窗口</a>]</p>";
    var temp = "";
    if(busData)
    {
        for(var i = 0; i < busData.Rows.length; i++)
            temp += "<li><a href='#' onclick=\"retOnClick(" + busData.Rows[i].ID + ",'" + busData.Rows[i].Name + "')\">" + busData.Rows[i].Name + "</a></li>";
    }
    if(temp) cityHtml += "<ul class='list'>" + temp + "</ul>";
    else cityHtml += "暂无";


    var divgetStore = F("divretStore");
    divgetStore.innerHTML = cityHtml + "<div class='clear'></div><div class='clear'></div>";
    divgetStore.style.display = "block";
}
function retOnClick(id,name){
    F("retcityname").value = name;
    F("retcity").value = id;
    F("divretStore").style.display = "none";
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
    F("divgetStore").style.display = "none";
    F("divretStore").style.display = "none";
};