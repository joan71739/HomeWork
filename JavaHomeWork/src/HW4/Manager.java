package HW4;

public class Manager extends Employee {

	private long bonus;
	
	public Manager(int empno, String name, long salary,long bonus) {
		super(empno, name, salary);
		this.bonus = bonus;
	}

	public long getBonus() {
		return bonus;
	}

	public void setBonus(long bonus) {
		this.bonus = bonus;
	}
	
	@Override
	public long getSalary() {
		long sall = super.getSalary();
		sall = sall + bonus;
		return sall;
		
		
	}
	

	
	@Override
	public String desc() {
		
		return String.format("員工編號:%d, 員工姓名:%s, 薪水:%d, 分紅:%d",getEmpno(),getName(),getSalary(),bonus);
	}
	
	
	

}

