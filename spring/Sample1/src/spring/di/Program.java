package spring.di;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.aop.entity.Exam;
import spring.aop.entity.NewlecExam;
import spring.di.ui.ExamConsole;

public class Program {

	public static void main(String[] args) {
		/*
		
		Exam exam = new NewlecExam();
	//	ExamConsole console = new InlineExamconsole(exam);
		ExamConsole console = new GridExamconsole(exam);
		console.setExam(exam);
		*/
		
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/di/setting.xml");
		
	//	ExamConsole console =(ExamConsole)context.getBean("console");
	//	ExamConsole console =context.getBean(ExamConsole.class);
		
		ExamConsole console = context.getBean(ExamConsole.class);
		console.print();
	//	Exam exam = context.getBean(Exam.class);
	//	System.out.println(exam.toString());
		
	//	List<Exam> exams = new ArrayList<Exam>();
		//List<Exam> exams = (List<Exam>)context.getBean("exams");
		//exams.add(new NewlecExam(1,1,1,1));
	//	exams.add(new NewlecExam(2,2,2,2));
	//	for(Exam e : exams) {
	//		System.out.println(e);
	//	}

	}
 
}
