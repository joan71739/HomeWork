package HW6;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class MapTest {

	public static void main(String[] args) {
		People p1 = new People("001",21);
		People p2 = new People("002",33);
		People p3 = new People("003",41);
		 
		/*實作1:請定義⼀個泛型的Map，key值為people的id，value
		為『People物件』，將上述三個people放入Map中*/
		Map<String,People> map = new HashMap<>();
		map.put("001",p1);
		map.put("002",p2);
		map.put("003",p3);
		
		
		/*實作2:請⽤for迴圈或者iterator，利⽤實作１的Map計算三
		⼈的平均年齡⾄少到⼩數第⼀位。*/
		
		
		double sum = 0;
		int count = 0;
		Set <String> keyset = map.keySet();
		for(String key: keyset) {
			sum = sum + map.get(key).getAge();
			count = count + 1;
		}
		
		
		System.out.printf("平均值=%.1f",(sum / count));

	}

}
