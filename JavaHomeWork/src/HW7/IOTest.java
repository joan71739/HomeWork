package HW7;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class IOTest {

	public static void main(String[] args) {
		
		/*如果以瀏灠器打開以下的網址http://iosnetworkdemo.appspot.com/json.jsp?msg=helloWorld，會回應
		  {“msg”:”helloWorld”,”狀態”:"成功"}，編碼為UTF8,
		  請利⽤Java程式呼叫此網址，此將此網址回傳的結果⽰在Console中(IOTest.java)，程式中的所有Exception處理必須使⽤try catch不能直接由⽅法抛出。*/
		
		
		try {
			URL url = new URL("http://iosnetworkdemo.appspot.com/json.jsp?msg=helloWorld");
			try {
				InputStream is = url.openStream();
				InputStreamReader isr = new InputStreamReader(is,"UTF-8");
				BufferedReader br = new BufferedReader(isr);
				
				String line;
				while((line = br.readLine()) != null) {
					System.out.println(line);
				}
					
				is.close();
				isr.close();
				br.close();
				
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	
	}

}
