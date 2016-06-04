package cn.com.cxsw.common.dao;

import java.util.List;

public interface BasicDao<T> {
	/*添加*/
	public void add(T t);
	/*列表*/
	public List<T> list();
	/*删除*/
	public void delete(Integer code);
	/*编辑*/
	public T get(Integer code);
	/*更新*/
	public void update(T t);
}
