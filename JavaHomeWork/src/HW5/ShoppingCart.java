package HW5;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
	public static void main(String[] args) {
		
		List<Product> shoppingList = new ArrayList<Product>();
	//實作1.加入⼆台Notebook("Asus",30000),Notebook("Acer",20000),Food("Cookie",200)
		Notebook nb = new Notebook("Asus", 30000);
		Notebook nb2 = new Notebook("Acer", 20000);
		Food food = new Food("Cookie", 200);
		
		
		shoppingList.add(nb);
		shoppingList.add(nb2);
		shoppingList.add(food);
		
		


	//實作2.利⽤for迴圈，計算shoppingList中的總⾦額,並印在Console中

		
		int sum = 0;
		for (Product product : shoppingList ) {
			sum = sum + product.getPrice();
		}
		System.out.println("總金額:"+sum);
		
		
		//實作3.利⽤for迴圈，加總shoppingList中是Notebook型態的總⾦額,並印在Console中

		int summ = 0;
		for (Product productt : shoppingList) {
			if(productt instanceof Notebook) {
				summ = summ + productt.getPrice();
			}
			
		}
		System.out.println("Notebok 金額:" + summ);


	}

}
