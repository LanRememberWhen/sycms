(function($,window,document,undefined){
	$.fn.jqScrollImg = function(params,fnEnd){
		var pb = params || {
			oUl: $('#foucsImgList'),		//无缝滚动的容器
			oLi: $('#foucsImgList li'),	//容器内数列
			oNext: $('#foucsNext'),	//下一页按钮（选填）
			oPrev: $('#focusPrev'),	//上一页按钮（选填）
			oTtitle:$('#foucsTitle'),//标题
			aNum: $('#foucsNum span'),//索引
			oPage: $('.foucsPage'),//页码
			oPlay: $('.palyBtn'),//播放控制铵钮
			times: 2000,	//是否自动播放，及播放间隔
			runNum: 1,		//每次滚动的数量（选填）
			timers: 500, //切换时间
			oLeft : 'left',//是横着切换，还是坚着换，默认为横
			onCur : 'active'
	    };

	    var oUlBox = pb.oUl,
	    	aLi = pb.oLi,
	    	oNextBtn = pb.oNext,
	    	oPrevBtn = pb.oPrev,
	    	oText = pb.oTtitle,
	    	aNumBtn = pb.aNum,
	    	oPagebtn = pb.oPage,
	    	oPlayBtn = pb.oPlay,
	    	playTimers = pb.times ? pb.times : false,
	    	runNums = pb.runNum ? pb.runNum : 1,
	    	runTimes = pb.timers ? pb.timers :500,
	    	runDir = pb.oLeft ? pb.oLeft : 'left',
	    	on = pb.onCur ? pb.onCur : 'active';


	    var iNow1 = 0,
	        iNow2 = 0,
	        timer = null,
	        len = aLi.length,
	        oOne = (runDir == 'left') ? aLi.eq(0).outerWidth(true) : aLi.eq(0).outerHeight(true),
	        oW = oOne*len,
	        page = Math.ceil(len/runNums);

	    var oOneStep = oOne*runNums;

	    var oN = false;
	    var oP = false;
	    //alert(oOne)


	    //初始化
	    oUlBox.append(oUlBox.html());
	    if(runDir == 'left'){
	    	oUlBox.css({'width': oW*2});
	    }else{
	    	oUlBox.css({'height': oW*2});
	    }
	    if(oText != undefined){
	    	oText.text(aLi.eq(0).attr('title'));
	    }
	    if(oPagebtn != undefined){
	    	oPagebtn.html('1/'+page);
	    }


	    //索引加事件
	    if(aNumBtn != undefined){
		    aNumBtn.each(function(index){
		    	$(this).mouseover(function(){

		    		iNow1 = $(this).index();
		    		iNow2 = $(this).index();

		    		aNumBtn.removeClass(on);
		    		$(this).addClass(on);

		    		if(runDir == 'left'){
		    			oUlBox.stop().animate({ 'left': -oOneStep*iNow1+'px' }, runTimes);
		    		}else{
		    			oUlBox.stop().animate({ 'top': -oOneStep*iNow1+'px' }, runTimes);
		    		}	 
				    if(oText != undefined){
				    	oText.text(aLi.eq(iNow1).attr('title'));
				    }	 
				    if(oPagebtn != undefined){
				    	oPagebtn.html(iNow1+'/'+page);
				    }				       		   		
		    	});
		    });	    	
	    }


	    function move(){
	    	if(!oN){
	    		oN = true;
				if(iNow1>=page){
					iNow1=0;
				}
				iNow2++;
				if(iNow2>=page){
					iNow2=0;
				}			
				iNow1++;
				
				if(runDir == 'left'){
					if(parseInt(oUlBox.css('left'))<=-oW)
					{
						oUlBox.css('left', 0);//'left'用变量后，就不执行
					}
					oUlBox.stop().animate({ 'left': -oOneStep*iNow1+'px' }, runTimes, function(){
						oN = false;	 
					});//'left'用变量后，就不执行
				}else{
					if(parseInt(oUlBox.css('top'))<=-oW)
					{
						oUlBox.css('top', 0);
					}
					oUlBox.stop().animate({ 'top': -oOneStep*iNow1+'px' }, runTimes, function(){
						oN = false;	 
					});
				}
				if(aNumBtn != undefined){
		    		aNumBtn.removeClass(on);
		    		aNumBtn.eq(iNow2).addClass(on);						
				}
	
			    if(oText != undefined){
			    	oText.text(aLi.eq(iNow2).attr('title'));
			    }	 
			    if(oPagebtn != undefined){
			    	oPagebtn.html((iNow2+1)+'/'+page);
			    }		
	    	}
		       			
	    }

	    //自动播放
	    if(playTimers){
	    	timer = setInterval(move, playTimers);
	    }
	    $(this).mousemove(function(event) {
	    	clearInterval(timer);
	    });
	    $(this).mouseout(function(event) {
		    if(playTimers){
		    	timer = setInterval(move, playTimers);
		    }
	    });


	    
	    //下一页
	    if(oNextBtn != undefined){
		    oNextBtn.click(function(){
		    	move();
		    });	    	
	    }

	    //上一页
	    if(oPrevBtn != undefined){
		    oPrevBtn.click(function(){
		    	if(!oP){
		    		oP = true;
					if(iNow1<=0){
						iNow1 = page;
					}
					iNow2--;
					if(iNow2<0){
						iNow2 = page-1;
					}			
					iNow1--;
					
					if(runDir == 'left'){
						if(parseInt(oUlBox.css('left'))>=0)
						{
							oUlBox.css('left', -oW);//'left'用变量后，就不执行
						}
						oUlBox.stop().animate({ 'left': -oOneStep*iNow1+'px' }, runTimes, function(){
							oP = false;	 
						});//'left'用变量后，就不执行
					}else{
						if(parseInt(oUlBox.css('top'))>=0)
						{
							oUlBox.css('top', -oW);
						}
						oUlBox.stop().animate({ 'top': -oOneStep*iNow1+'px' }, runTimes, function(){
							oP = false;	 
						});
					}
					if(aNumBtn != undefined){
			    		aNumBtn.removeClass(on);
			    		aNumBtn.eq(iNow2).addClass(on);						
					}	
				    if(oText != undefined){
				    	oText.text(aLi.eq(iNow2).attr('title'));
				    }	 
				    if(oPagebtn != undefined){
				    	oPagebtn.html((iNow2+1)+'/'+page);
				    }			
		    	}
		    });	    	
	    }


	    //开关按钮
	    if(oPlayBtn != undefined){
		    oPlayBtn.click(function(){
		    	if(playTimers){
		    		playTimers = false;
		    	}else{
		    		
		    		playTimers = 5000;
				    timer = setInterval(move, playTimers);
				    
		    	}
		    });	    	
	    }
	};

})(jQuery,window,document);