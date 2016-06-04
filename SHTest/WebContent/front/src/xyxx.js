	function SetHome(obj,vrl){
        try{
                obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl);
        }
        catch(e){
                if(window.netscape) {
                        try {
                                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");  
                        }  
                        catch (e)  { 
                                alert("此操作被浏览器拒绝！");  
                        }
                        var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                        prefs.setCharPref('browser.startup.homepage',vrl);
                 }
        }
}

function fnsubmit(){
	document.URL='职位详情 - 北京高校毕业生就业信息网.htm';
}
function fnsubmit1(){
			var name=document.getElementById("zhcxModel_ent_name").value;
			

			if(name==""){
				alert("用人单位名称不能为空！");
				return false;
			}
			document.frm1.action="http://qyxy.baic.gov.cn/zhcx/zhcxAction!list.dhtml?op=cx";
			document.charset='utf-8';
			document.frm1.submit();
		}



