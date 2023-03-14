$(function(){
	//1.头部动态时间
	dateTime();
	
	//2.父级菜单点击效果
	$(".menu li span").click(function(){
		var menu = $(this).parent();
		showChildrenMenu(menu)
	});
});
/*头部动态时间开始*/
function dateTime(){
	//初始化时间
	initDateTime();
	setInterval(initDateTime,1000);
}
function initDateTime(){
	$("#today").html(new Date().toLocaleString());
}
/*头部动态时间结束*/

//显示子菜单
function showChildrenMenu(menu){

	var children_menu = menu.children("ul");
	children_menu.css("background","#FFFFFF");
	if(children_menu.css("display")=="none"){
		children_menu.show();
	}else {
		children_menu.hide();
	}
}










