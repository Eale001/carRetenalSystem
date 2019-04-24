var cache_id = 0 ;
function switchShow(tag){
    var tObj = document.getElementById("subTable"+tag);
	var	cObj = document.getElementById("subTable"+cache_id);
	if(tObj) tObj.className =(tObj.className=='box2 none') ? "box2" : "box2 none";
	if(cache_id != tag){
		cache_id = tag;
		if(cObj)cObj.className = "box2 none";
	}
}
function LoadStore($cid,$tag,$flag){
    var url = '/index.php';
    var param = {
        'm':'api',
        'a':'carstore',
        'id':$cid,
        'flag':$flag

    };
	$.get(
		url,
		param,
		function(data){
			$("#subTable"+$tag).html(data);
		}
	);
}