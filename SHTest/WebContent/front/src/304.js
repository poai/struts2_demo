function ZCMSAD(PositionID) {
  this.ID        = PositionID;
  this.PosID  = 0; 
  this.ADID		  = 0;
  this.ADType	  = "";
  this.ADName	  = "";
  this.ADContent = "";
  this.PaddingLeft = 0;
  this.PaddingTop  = 0;
  this.Width = 0;
  this.Height = 0;
  this.IsHitCount = "N";
  this.UploadFilePath = "";
  this.URL = "";
  this.SiteID = 0;
  this.ShowAD  = showADContent;
}

function adClick(ADID,ADURL) {
	var sp = document.createElement("SCRIPT");
	sp.src = this.URL+"?SiteID="+this.SiteID+"&ADID="+ADID+"&URL="+ADURL;
	document.body.appendChild(sp);
}

function showADContent() {
  var content = this.ADContent;
  var str = "<div id='ZCMSAD_"+this.PosID+"' style='width:"+this.Width+"px; height:"+this.Height+"px;'>";
  var AD = eval('('+content+')');
  if (this.ADType == "image") {
	  str += "<a href='"+AD.Images[0].imgADLinkUrl+"'  onClick='adClick(\""+this.ADID+"\",\""+AD.Images[0].imgADLinkUrl+"\")' target='"+((AD.imgADLinkTarget == "Old") ? "_self" : "_blank") + "'>";
	  str += "<img title='"+AD.Images[0].imgADAlt+"' src='"+this.UploadFilePath+AD.Images[0].ImgPath+"' width='"+this.Width+"' height='"+this.Height+"' style='border:0px;'>";
	  str += "</a>";
  }else if(this.ADType == "flash"){
	  str += "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width='"+this.Width+"' height='"+this.Height+"' id='FlashAD_"+this.ADID+"'>";
	  str += "<param name='movie' value='"+this.UploadFilePath+AD.Flashes[0].SwfFilePath+"' />"; 
      str += "<param name='quality' value='high' />";
      str += "<param name='wmode' value='transparent'/>";
      str += "<param name='swfversion' value='8.0.35.0' />";
	  str += "<embed wmode='transparent' src='"+this.UploadFilePath+AD.Flashes[0].SwfFilePath+"' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='"+this.Width+"' height='"+this.Height+"'></embed>";
      str += "</object>";	  
  }
  str += "</div>";
  document.write(str);
}
 
var cmsAD_304 = new ZCMSAD('cmsAD_304'); 
cmsAD_304.PosID = 304; 
cmsAD_304.ADID = 5; 
cmsAD_304.ADType = "image"; 
cmsAD_304.ADName = "&#20844;&#21153;&#21592;&#19987;&#39064;"; 
cmsAD_304.ADContent = "{'Images':[{'imgADLinkUrl':'http://www.bjbys.net.cn/jyzt/2014gwy','imgADAlt':'&#20844;&#21153;&#21592;&#19987;&#39064;','ImgPath':'upload/Image/mrtp/zdydt/2669101501.jpg'}],'imgADLinkTarget':'New','Count':'1','showAlt':'Y'}"; 
cmsAD_304.URL = "http://job.bjbys.net.cn/zcmsnew/Services/ADClick.jsp"; 
cmsAD_304.SiteID = 214; 
cmsAD_304.Width = 299; 
cmsAD_304.Height = 90; 
cmsAD_304.UploadFilePath = "http://www.bjbys.net.cn/"; 
cmsAD_304.ShowAD();
