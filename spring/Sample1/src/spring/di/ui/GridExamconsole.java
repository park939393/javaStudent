package spring.di.ui;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import spring.aop.entity.Exam;

@Component
public class GridExamconsole implements ExamConsole{
	
	
	private Exam exam;
	
	public GridExamconsole() {
		System.out.println("기본 생성자");
	}
	
	@Autowired
	public GridExamconsole(@Qualifier("exam1")Exam exam) {
		super();
		this.exam = exam;
		System.out.println("명시적 생성자");
	}


	@Override
	public void print() {
		System.out.println("-----------------------------------");
		System.out.println("---total-------------avage---------");
		System.out.println("-----------------------------------");
		System.out.printf("-----%3d-----------%3.2f  -- \n ",exam.total(),exam.avg());
		System.out.println("-----------------------------------");
		
	}
	
	
	@Override
	public void setExam(Exam exam) {
		System.out.println("세터 생성자");
		this.exam = exam;
		
	}

}
