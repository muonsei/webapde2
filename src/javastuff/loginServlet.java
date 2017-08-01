package javastuff;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		//request.getRequestDispatcher("home.jsp").forward(request,  response);
		request.getRequestDispatcher("relogin").forward(request,  response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		String login = request.getParameter("login");
		
		String reguser = request.getParameter("reguser");
		String regpass = request.getParameter("regpass");
		String regdesc = request.getParameter("regdesc");
		String register = request.getParameter("register");
		
		final String driver = "com.mysql.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/webapde";
		final String dbusername = "root";
		final String dbpassword = "1234";
		
		//HttpSession session = request.getSession();
		
		try{
			Class.forName(driver);
				
			Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);
			
			if(login != null){
				
				boolean found = false;
				String search = "SELECT * FROM user";
				Statement state = connection.createStatement();
				ResultSet rs = state.executeQuery(search);
				
				while(rs.next()){
					
					String rsUser = rs.getString("username");
					String rsPass = rs.getString("password");
					
					if(username.equals(rsUser) && password.equals(rsPass)){
						System.out.println("it went in");
						
						found = true;
						
						//session.setAttribute("user", username);
						
						Cookie cookie;
						
						if(remember != null){
							System.out.println("remember has cookie");
							cookie = new Cookie("user","remember");
							cookie.setMaxAge(60*60*24*21);
							response.addCookie(cookie);
						}
						else{
							System.out.println("no remember has cookie");
							cookie = new Cookie("user","onetime");
							cookie.setMaxAge(-1);
							response.addCookie(cookie);
						}
						
					}
				}
				
				if(found){
					//session.setAttribute("signin", "true");
					request.getRequestDispatcher("home.jsp").forward(request,  response);
				}else{
					request.getRequestDispatcher("login.jsp").forward(request,  response);
				}
				
			}else if(register != null){
				
				System.out.println("REGISTER");
						
				PreparedStatement statement = connection.prepareStatement("INSERT INTO user (username, password, description) VALUES (?,?,?)");
							
				statement.setString(1, reguser);
				statement.setString(2, regpass);
				statement.setString(3, regdesc);
							
				statement.executeUpdate();
						
				request.getRequestDispatcher("login.jsp").forward(request,  response);
			}else{
				
				//alert first then redirect
				request.getRequestDispatcher("login.jsp").forward(request,  response);
				
			}
			
			connection.close();
		
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		/*
		if (user != null) { // when you retrieve Person from service.. check if Person is null or not
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("Protected1");
		} else { // if person is null.. request dispatcher to login.jsp with an error message
			request.setAttribute("error", "Invalid login. Please try again.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		if(("admin").equals(username) && ("1234").equals(password)) {
			// success: display profile.jsp
			// needed so that we can access username in jsp
			//request.setAttribute("un", username);
	
			
			HttpSession session = request.getSession();
			session.setAttribute("firstname", "ded");
			session.setAttribute("lastname", "ass");
			session.setAttribute("username", "dedasshuman");
			
			
			HttpSession session = request.getSession();
			session.setAttribute("user", "login");
			
			Cookie cookie = new Cookie("username", username);
			cookie.setMaxAge(60*60*24*365*2);
			response.addCookie(cookie);
			
			request.getRequestDispatcher("home.jsp").forward(request,  response);
		} else {
			response.sendRedirect("login.html");
		}	
		*/
		
	}

}
