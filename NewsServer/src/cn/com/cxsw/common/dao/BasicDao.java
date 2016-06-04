package cn.com.cxsw.common.dao;

import java.util.List;

public interface BasicDao<T> {
	/*���*/
	public void add(T t);
	/*�б�*/
	public List<T> list();
	/*ɾ��*/
	public void delete(Integer code);
	/*�༭*/
	public T get(Integer code);
	/*����*/
	public void update(T t);
}
