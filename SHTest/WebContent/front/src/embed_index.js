  
  
		
	//解析数据集合，置顶，无分页，每单位只有一条职位
	function onloadlst(board,viewdivID,psize,category,jobType,natureCode)
	{
		var params = getParams(psize,category,jobType,natureCode);
		$.getJSON('http://job.bjbys.net.cn/campus//json/general_searchp?callback=?',params,
				function(data)
				{	var lists = '';
					var divElement="#"+viewdivID;
					var date ;
					//var areaCode;
					//var area="";
					var topFlag="";

					if(board=="index"){//首页
						$.each(data.lst, function()
						{							
							date = this.postDate.substring(5,10);
							/*areaCode = this.areaCode.substring(0,2);							
							$.each(provinceItems, function(){
								if(this.id==areaCode){area=this.name;}			 
							});
							*/
							if(this.priority==1){
								lists += '<dd><a href="http://job.bjbys.net.cn/campus//job/view_job?jobId='
								+ this.jobId
								+ '" target="_blank" title="职位名称：'
								+ this.jobTitle
								+ '&#10单位行业：' +this.industry+'&#10单位性质：' +this.nature 
								+'">'
								+ this.recName
								+ '('								
								+ date
								+')</a></dd>';
							}else{
								lists += '<dd></span><a href="http://job.bjbys.net.cn/campus//job/view_job?jobId='
								+ this.jobId
								+ '" target="_blank" title="职位名称：'
								+ this.jobTitle
								+ '&#10单位行业：' +this.industry+'&#10单位性质：' +this.nature 
								+'">'
								+ this.recName
								+ '('								
								+ date
								+')</a></dd>';
							}
							
							
						});	
						
					}
					if(board=="job-index"){//招聘
						$.each(data.lst, function(i)
						{							
							var spaceDiv;
							date = this.postDate.substring(5,10);
							areaCode = this.areaCode.substring(0,2);				
							
							$.each(provinceItems, function(){
								if(this.id==areaCode){area=this.name;}			 
							});
							
							if((i+1)%6==0){
								spaceDiv='<div class="space"></div>';
							}else{spaceDiv='';}
							
							if(this.priority==1){
								lists += '<li><span class="font5">['
								+ area
								+ ']&nbsp;<a href="http://job.bjbys.net.cn/campus//job/view_job?jobId='
								+ this.jobId
								+ '" target="_blank" title="'
								+ this.jobTitle
								+ '">'
								+ this.recName
								+ '</a></span>('								
								+ date
								+ ')</li>'
								+ spaceDiv;
							}else{
								lists += '<li><span class="font4">['
								+ area
								+ ']</span>&nbsp;<span class="font2"><a href="http://job.bjbys.net.cn/campus//job/view_job?jobId='
								+ this.jobId
								+ '" target="_blank" title="'
								+ this.jobTitle
								+ '">'
								+ this.recName
								+ '</a></span>('								
								+ date
								+')</li>'
								+ spaceDiv;
							}
						
						});	
						
				}
					
					
					if(lists!='')
						{
							
							$(divElement).html(lists);
						}else
						{
							$(divElement).html("页面加载中...");
						}
				}
				
		);
	}
	    	
	//初始化查询参数
	function getParams(psize,category,jobType,natureCode)
	{
	   var params = {
			recName:"",
			natureCode:natureCode,
			industryCode:"",
			recScale:"",
			jobTitle:"",
			category:category,
			jobType:jobType,
			areaCode:"",
			degreeCode:"",
		    dayLimit:"-1",
			siteId:"",//默认空为全部，00为中心，10001为北京大学
		    psize: parseInt(psize),//每页条数
		    //pindex: parseInt(pindex),//显示第？页
			callback:"test"};
		   return params;
	}