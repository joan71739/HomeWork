package HW4;

public class Test {

	public static void main(String[] args) {
		Employee em = new Employee(6,"Joanne", 40000);
		System.out.println(em.desc());
		
		Manager ma = new Manager(7, "Mark", 50000, 1234);
		System.out.println(ma.desc());

	}

}
