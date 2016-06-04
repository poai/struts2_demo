package cn.com.zjf;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;

import org.apache.commons.codec.digest.DigestUtils;

import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport{

	private String token="zhangjinfeng";
	private String signature;
	private String timestamp;
	private String nonce;
	private String echostr;
	private InputStream inputStream;
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	public String getNonce() {
		return nonce;
	}
	public void setNonce(String nonce) {
		this.nonce = nonce;
	}
	public String getEchostr() {
		return echostr;
	}
	public void setEchostr(String echostr) {
		this.echostr = echostr;
	}
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		
		String [] arr=new String[]{token,timestamp,nonce};
		System.out.println(this);
		try{
			Arrays.sort(arr);
			String tempStr=arr[0] + arr[1] + arr[2];
			System.out.println(tempStr);
			String result=new String(DigestUtils.sha1Hex(tempStr));
			System.out.println(result);
			if(result.equals(signature)){
				inputStream=new ByteArrayInputStream(echostr.getBytes());
			}else{
				inputStream=new ByteArrayInputStream("false".getBytes());
			}
			
		}catch(Exception e){
			inputStream=new ByteArrayInputStream("false".getBytes());
		}
		return SUCCESS;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	@Override
	public String toString() {
		return "CheckAction [signature=" + signature + ", timestamp=" + timestamp + ", nonce=" + nonce + ", echostr="
				+ echostr + "]";
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	
	
}
