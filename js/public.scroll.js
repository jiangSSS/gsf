    /**
     * 上拉加载具体业务实现
     */
    var page = 1;
    var zpage = 1;
    function pullupRefresh() {
        setTimeout(function(){
            iPageCount = 5;//根据获取内容页面的每页多少条数据设置现在 json.asp 默认设置的是读取5条数据
            var ul = document.querySelector('.mui-table-view');
			mui(targetToken).pullRefresh().endPullupToRefresh(setHtmlToUl(ul));
        }, 1500);
    }
	var isloadok = false;
	var setHtmlToUl = function(ul) {
		if (ul.getAttribute("pageNumber") == null) {
			var pageNum = 1;
		} else {
			var pageNum = ul.getAttribute("pageNumber")
		}
		id = ul.getAttribute("data_id");
		//var length = ul.querySelectorAll('li').length;
		var fragment = document.createDocumentFragment();
		var li;
		/*
		 * 这里可以书写ajax的参数
		 * for 用来处理ajax 得到的数据
		 * return true 标书数据加载完成 否则就是还有数据还可以继续加载
		 * 可以修改位置开始
		 */
		//alert(id);
		var ajaxDataUrl = "list.asp?action=" + id +"&page="+ pageNum + "";
		$.post(ajaxDataUrl,{stype:"1",page:pageNum},function(data){
			sHtml = (pageNum==1)?data:ul.innerHTML+data;
			//sHtml = ul.innerHTML+data;
			ul.innerHTML = sHtml;
			pageNum++;
			ul.setAttribute("pageNumber", pageNum);//设置页数给ul标签	
			//我的收藏选择规格弹出层显示
			$('.orderBtn').on('tap',function(){
				$('.specLayer').fadeIn(500);
				$('.specLayer').find('.detailsLayerCon').animate({bottom:'0'},500);
			})
			//我的收藏选择规格
			$('.specList .content a').on('tap',function(){
				if($(this).hasClass('active')){
					$(this).removeClass('active')
				}else{
					$(this).addClass('active')
				}
			})
			//隐藏弹出层
			$('.detailsLayerBg,.detailsLayerClose,.buttonBig').on('tap',function(){
				$('.detailsLayer').fadeOut(500);
				$('.detailsLayerCon').animate({bottom:'-100%'},500);
			})
			$(document).ready(function(e) {
			  mui('.mainHref').on('tap', 'a', function (e) {
				if (!this.classList.contains('mui-disabled')) {
					mui.openWindow({
					url: this.getAttribute('href'),
					id: 'info'
					});
				}else {
					//s e.preventDefault();
					mui.preventDefault(e);
					mui.stopPropagation(e);
					}
				});  
			});
		}).error(function(xhr){
		isloadok = true;
		console.log("false111111111111");
		});

		return isloadok;
	};
	var obj1 = document.querySelectorAll(".mui-active")[0];
	var ul1 = obj1.querySelector(".mui-table-view");
	ul1.setAttribute("data_id",obj1.id);
	setHtmlToUl(ul1);