package cn.com.zjf.db;

import java.util.HashMap;
import java.util.Map;

import cn.com.zjf.model.Student;

public class StudentDB {

	public static Map<Long, Student> students = new HashMap<Long, Student>();

	static {
		students.put((long) 1, new Student((long) 1, 2001, "student1", "��", "���ݽ�ͨ��ѧ", new String[] { "����", "����", "����", "����" }));
		students.put((long) 2, new Student((long) 2, 2002, "student2", "Ů", "����ʦ����ѧ", new String[] { "����", "����" }));
		students.put((long) 3, new Student((long) 3, 2003, "student3", "Ů", "��������ѧԺ", new String[] { "����", "����" }));
		students.put((long) 4, new Student((long) 4, 2004, "student4", "��", "���ݽ�ͨ��ѧ", new String[] { "����" }));
	}

}
