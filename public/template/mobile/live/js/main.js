window.onload=function(){
	var windowWidth =  document.body.clientWidth;
	if(windowWidth>720){
		windowWidth=720;
	}
	var oDropBox = document.getElementById('dropsBox');
	oDropBox.style.width = windowWidth+'px';
	headerDrop();
};
function headerDrop(){
	var oDropsBtn = document.getElementById('pcLinks'),
		oDropsBox = document.getElementById('dropsBox');
	var aLi = oDropsBox.getElementsByTagName('li');
	var bg = document.getElementById('HeaderBg');
	var btn = false;
	oDropsBtn.onclick = function(){
		if(!btn){
			oDropsBox.style.display = 'block';
			bg.style.display = 'block';
			btn = true;
		}else{
			oDropsBox.style.display = 'none';
			bg.style.display = 'none';
			btn = false;
		}
	};
	bg.onclick = function(){
		oDropsBox.style.display = 'none';
		bg.style.display = 'none';
		btn = false;
	}

}

//查看更多
function clockMore(aList, oBtn, num){
	var aList = $(aList),
		oBtn = $(oBtn);
	num?num:num=1;
	aList.hide();
	aList.slice(0, num).show();
	oBtn.text('展开更多');
	oBtn.toggle(function(){
		aList.show();
		$(this).text('收缩');
	},function(){
		aList.hide();
		aList.slice(0, num).show();
		$(this).text('展开更多');
	});

}


//选项卡
function changeTab(aNav, aList){
	var aLi = $(aNav);
	var aList = $(aList);

	aLi.each(function(){
		$(this).click(function(){
			aLi.removeClass('active');
			$(this).addClass('active');

			aList.hide();
			aList.eq($(this).index()).show();
		});
	});
}
$(function(){
	changeTab('.zbTabNav li', '.zbTabList');
});
