package javastuff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class relogin
 */
@WebServlet("/relogin")
public class relogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public relogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Cookie [] allCookies = ((HttpServletRequest) request).getCookies();
		
		String thiscookie = null;
		
		if(allCookies != null){
			for(int i = 0; i < allCookies.length; i++){
				Cookie cookie = allCookies[i];
				System.out.println(cookie.getName());
				if(cookie.getName().equals("user")){
					thiscookie = cookie.getValue();
				}
			}		
		}
		
		if(thiscookie == null){
			request.getRequestDispatcher("login.jsp").forward(request,  response);
		}else{
			request.getRequestDispatcher("home.jsp").forward(request,  response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
