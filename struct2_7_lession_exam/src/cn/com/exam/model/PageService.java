package cn.com.exam.model;

import java.util.Date;
import java.util.List;
import java.util.Map;

import cn.com.exam.util.DbUtil;

public class PageService {
	public static final String SINGLE = "single";
	public static final String MULT = "mult";
	private DbUtil db;
	private List<Map<String, Object>> data;
	private String sql;

	public List<Map<String, Object>> page(String type) {
		try {
			db = new DbUtil();
			sql = "SELECT CODE,NAME,A,B,C,D,ANSWER FROM TOPIC WHERE TYPE=?";
			data = db.query(sql, new String[] { type });
		} catch (Exception e) {

		}
		return data;
	}
	public int handlerResult(Map<String,String[]> requestMap,String userCode,String userName) {
		Integer result = 0;
		StringBuffer resultStr = new StringBuffer();
		Map<String, String[]> params = requestMap;
		try {
			db = new DbUtil();
			sql = "SELECT CODE,ANSWER,TYPE FROM TOPIC";
			data = db.query(sql);
			String code = null;
			String answer = null;
			String type = null;
			for (Map<String, Object> map : data) {
				code = (String) map.getOrDefault("code", "");
				type = (String) map.getOrDefault("type", "single");
				if (params.containsKey(code)) {
					answer = ArryToString(params.get(code));
					if (answer.equals(map.get("answer"))) {
						/* 回答正确 */
						
						if (SINGLE.equals(type)) {
							result += 3;
						} else {
							result += 4;
						}
					}
					resultStr.append(code);
					resultStr.append("_");
					resultStr.append(answer);
					resultStr.append(",");
				}else{
					resultStr.append(code);
					resultStr.append("_");
					resultStr.append("#");
					resultStr.append(",");
				}
			}
			sql="INSERT INTO GRADE(CODE,NAME,GRADE,ANSWER,SUBMIT_TIME) VALUES(?,?,?,?,?,?)";
			db.update(sql, new String[]{userCode,userName,result+"",resultStr.toString(),new Date().toString()});
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(resultStr.toString());
		return result;
	}

	public String ArryToString(String[] arr) {
		if (arr == null || arr.length == 0) {
			return "";
		}
		StringBuffer sb = new StringBuffer();
		for (String str : arr) {
			sb.append(str);
		}
		return sb.toString();
	}
}
