package spring.di.ui;

import spring.aop.entity.Exam;

public class InlineExamconsole implements ExamConsole{
	private Exam exam;
	
	public InlineExamconsole() {
		
	}
	
	public InlineExamconsole(Exam exam) {
		super();
		this.exam = exam;
	}






	@Override
	public void print() {
		System.out.printf("total is %d, avg is %f\n", exam.total(), exam.avg());
		
	}

	@Override
	public void setExam(Exam exam) {
		this.exam = exam;
		
	}

}
