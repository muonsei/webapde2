package javastuff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class logoutServlet
 */
@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("relogin.java").forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String logout = request.getParameter("logout");
		
		System.out.println(logout);
		
		if(logout != null){
			Cookie [] allCookies = request.getCookies();
			
			System.out.println(allCookies.length);
			
			if(allCookies != null){
				for(int i = 0; i < allCookies.length; i++){
					Cookie cookie = allCookies[i];
					System.out.println(cookie.getName());
					if(cookie.getName().equals("user")){
						System.out.println("removed cookie");
						cookie.setMaxAge(0); //deletes
						cookie.setValue(null);
						response.addCookie(cookie);
					}
					
				}
			}
			
			//request.getSession().invalidate();
			
			request.getRequestDispatcher("login.jsp").forward(request,  response);
		}
		
		
	}

}
