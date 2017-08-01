package javastuff;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class uploadServlet
 */
@WebServlet("/upload")
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.getRequestDispatcher("upload.jsp").forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String filename = request.getParameter("filename");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String tags = request.getParameter("tags");
		String upload = request.getParameter("upload");
		String userID = "1";
		String option = request.getParameter("option");
		String share = request.getParameter("share");
		
		final String driver = "com.mysql.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/webapde";
		final String dbusername = "root";
		final String dbpassword = "1234";
	
		System.out.println("its in upload");
		
		try{
			Class.forName(driver);
				
			Connection connection = DriverManager.getConnection(url, dbusername, dbpassword);
			
			if(upload != null){
						
				System.out.println("UPLOAD");
				
				PreparedStatement statement = connection.prepareStatement("INSERT INTO photo (userID, photoURL, phototitle, photodesc, phototag, phototype, sharedwith) VALUES (?,?,?,?,?,?,?)");
				
				statement.setString(1, userID);
				statement.setString(2, filename);
				statement.setString(3, title);
				statement.setString(4, description);
				statement.setString(5, tags);
				statement.setString(6, option);
				statement.setString(7, share);
							
				statement.executeUpdate();
							
			}
			connection.close();
		
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("upload.jsp").forward(request,  response);
	}

}
