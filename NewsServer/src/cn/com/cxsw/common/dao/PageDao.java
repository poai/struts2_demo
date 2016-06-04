package cn.com.cxsw.common.dao;

import cn.com.cxsw.common.model.PageModel;

public interface PageDao<T> extends BasicDao<T>{
	public PageModel<T> getPage(Integer pageRequest);
}
