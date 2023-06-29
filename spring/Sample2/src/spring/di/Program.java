package spring.di;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.di.entity.Exam;
import spring.di.entity.NewlecExam;
import spring.di.ui.ExamConsole;

public class Program {

	public static void main(String[] args) {
		
		
		/* 지시서로 던짐
		Exam exam = new NewlecExam();
	//	ExamConsole console = new InlineExamconsole(exam);
		ExamConsole console = new GridExamConsole();
		console.setExam(exam);
		*/
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/di/setting.xml");
		
		ExamConsole console = (ExamConsole) context.getBean("console");
		console.print();
		
		List<Exam> exams = new ArrayList();
		exams.add(new NewlecExam(1,1,1,1));
		for(Exam e : exams) {
			System.out.println(e); 
		}

	}
	
}
