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
                                alert("�˲�����������ܾ���");  
                        }
                        var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                        prefs.setCharPref('browser.startup.homepage',vrl);
                 }
        }
}

function fnsubmit(){
	document.URL='ְλ���� - ������У��ҵ����ҵ��Ϣ��.htm';
}
function fnsubmit1(){
			var name=document.getElementById("zhcxModel_ent_name").value;
			

			if(name==""){
				alert("���˵�λ���Ʋ���Ϊ�գ�");
				return false;
			}
			document.frm1.action="http://qyxy.baic.gov.cn/zhcx/zhcxAction!list.dhtml?op=cx";
			document.charset='utf-8';
			document.frm1.submit();
		}



