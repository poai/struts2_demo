package cn.com.zjf.db;

import java.util.ArrayList;
import java.util.List;

import cn.com.zjf.model.Student;

public class StudentDB {
	public static List<Student> students=new ArrayList<>();
	static{
		students.add(new Student(1, "2001", "student1", "女", new String[]{"篮球","足球"}));
		students.add(new Student(2, "2002", "student2", "男", new String[]{"篮球"}));
		students.add(new Student(3, "2003", "student3", "男", new String[]{"篮球","排球"}));
		students.add(new Student(4, "2004", "student4", "女", new String[]{"篮球","足球","棒球"}));
	}
}
