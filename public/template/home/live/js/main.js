$(function(){
	//选项卡
	function tab(atr1, atr2){
		var aNav = $(atr1);
		var aList = $(atr2);


		aNav.each(function(i){
			$(this).mouseover(function(){
				aNav.removeClass('active');
				$(this).addClass('active');
				aList.hide();
				aList.eq(i).show();
			});
		});
	}
	//足球像
	tab('.fooBallViTiNav li', '.fooBaViTabBox');
	tab('.sideTavNav span', '.footerSrcoll');
	//直播
	tab('.sideTavNav span', '.circleOl');
	//首页
	tab('.tabNav span', '.tabList');

	function scrolls(obj, move, stype, num, timers){
		var aMain = $(obj);
		aMain.each(function(){
			var _this = $(this);
			var oPrevBtn = _this.find('.turnPrev');
			var oNextBtn = _this.find('.turnNext');
			var oUl = _this.find('.scrollUl');
			var len = oUl.find('li').length;			
			_this.i = 0;
			if(move=='left'){
				var oneWidth =_this.find('li').outerWidth(true)*stype;
				oUl.width(len*oneWidth);
			}else{
				var oneWidth =_this.find('li').outerHeight(true)*stype;
				oUl.height(len*oneWidth);
			}
			

			
			if(len>num){
				oNextBtn.addClass('noend');
				oPrevBtn.click(function(){
					_this.i--;
					oNextBtn.addClass('noend');
					if(_this.i<=0){
						_this.i=0;
						$(this).removeClass('noend');
					}
					if(move=='left'){
						oUl.animate({'left': -oneWidth*_this.i}, timers);
					}else{
						oUl.animate({'top': -oneWidth*_this.i}, timers);
					}
				});
				oNextBtn.click(function(){
					_this.i++;
					oPrevBtn.addClass('noend');
					if(_this.i>=(len-num)){
						_this.i=(len-num);
						$(this).removeClass('noend');
					}
					if(move=='left'){
						oUl.animate({'left': -oneWidth*_this.i}, timers);
					}else{
						oUl.animate({'top': -oneWidth*_this.i}, timers);
					}
				});				
			}

		});
		
	}
	scrolls('.fooBaViTabBox', 'left', 1, 5, 500);
	scrolls('.footerSrcoll', 'top', 1, 6, 200);






    //返回顶部

	$('#fixGoTop').click(function(){
		$('html, body').animate({scrollTop: 0})
	});
	//加入书捡
	$('#fixAddMark').click(function(){
		try
	    {
	        window.external.addFavorite('http://www.ddzb.cc/', '直播吧');
	    }
	    catch (e)
	    {
	        try
	        {
	            window.sidebar.addPanel('直播吧', 'http://www.ddzb.cc/', "");
	        }
	        catch (e)
	        {
	            alert("加入收藏失败，请使用Ctrl+D进行添加");
	        }
	    }
	});

	//选项卡
	function zl07Tab(arg1, arg2){
		var aNav =$(arg1);
	    var zTimer=null;
		aNav.each(function(){
			if(!arg2){
				$(this).mouseover(function(){
	                var _this=$(this);
	                zTimer = setTimeout(function(){
	                    var oNavParent =_this.parents('.zl07NavParent');
	                    var aList=oNavParent.siblings('.zl07ListParent').children('.n2TabList');
	                    var n=_this.index();

	                    _this.siblings().removeClass('active');
	                   _this.addClass('active');

	                    aList.hide();
	                    aList.eq(n).show();                    
	                }, 200);
				}).mouseout(function(){
	                clearTimeout(zTimer);
	            });;
			}else{
				$(this).click(function(){
					var oNavParent =$(this).parents('.zl07NavParent2');
					var aList=oNavParent.siblings('.zl07ListParent').find('.n2TabList');
					var n=$(this).index();

					$(this).siblings().removeClass('active');
					$(this).addClass('active');

					aList.hide();
					aList.eq(n).show();
				});			
			}
		});		
	}
	zl07Tab('.zl07NavParent li');
});


/*直播页面倒计时*/

function zibuTimers(millisecond){
    var zibouJuTimers = document.getElementById('zibuoJuTimers');

    function toDou(n){
        return n<10?'0'+n:''+n;
    }
    var t=0;

    var endTime = millisecond? millisecond:0;

    function daoTime(){
        var s=millisecond;
        millisecond--;
        if(s<0){
            clearInterval(t);
            zibouJuTimers.innerHTML = '直播已结束';
            return;
        }else if(s==0){
            clearInterval(t);
            zibouJuTimers.innerHTML = '正在直播中';
            return;
        }
        var d=parseInt(s/86400);
        s%=86400;

        var h=parseInt(s/3600);
        s%=3600;

        var m=parseInt(s/60);
        s%=60;


        zibouJuTimers.innerHTML = '';
        zibouJuTimers.innerHTML = '距离直播开始还有:';
        d = d.toString();
        h = h.toString();
        m = m.toString();
        s = s.toString();
        //alert(s)

        for(var i=0; i<d.length; i++){

            zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'<span>'+d.charAt(i)+'</span>';
        }
        zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'天';
        for(var i=0; i<h.length; i++){
            zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'<span>'+h.charAt(i)+'</span>';
        }
        zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'时';
        for(var i=0; i<m.length; i++){
            zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'<span>'+m.charAt(i)+'</span>';
        }
        zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'分';
        for(var i=0; i<s.length; i++){
            zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'<span>'+s.charAt(i)+'</span>';
        }
        zibouJuTimers.innerHTML = zibouJuTimers.innerHTML+'秒';
    }

    daoTime();
    t=setInterval(daoTime,1000);
}

