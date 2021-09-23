

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String wbuserid;
	private String wbpassword;
	Hashtable users = new Hashtable();
       
    
	/** 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		doPost(req,res);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		
		if( userid != null && password != null && userid.equals(wbuserid) && password.equals(wbpassword) ) {
			req.setAttribute("userid", userid);
			req.getRequestDispatcher("/AccountServlet").forward(req, res);
			return;
		}else {
			req.getRequestDispatcher("/AccountServlet").forward(req, res);
			return;
		}
	
	
	
	}
	
	
	public void init() {
		ServletConfig config = this.getServletConfig();
		wbpassword = config.getInitParameter("password");
		
		wbuserid = config.getInitParameter("userid");
		
	}
	
	
	
	

}
