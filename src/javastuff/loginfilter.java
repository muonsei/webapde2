package javastuff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet implementation class loginfilter
 */
@WebFilter(urlPatterns = {"/home.jsp", "/profile.jsp", "/upload.jsp", "/photos.jsp"})
public class loginfilter implements Filter {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginfilter() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// cast to HttpServlet for use
		//HttpSession session = ((HttpServletRequest)request).getSession();
		// retrieve person from session 
		
		Cookie [] allCookies = ((HttpServletRequest) request).getCookies();
		
		String thiscookie = null;
		
		if(allCookies != null){
			for(int i = 0; i < allCookies.length; i++){
				Cookie cookie = allCookies[i];
				System.out.println(cookie.getName());
				if(cookie.getName().equals("user")){
					System.out.println(cookie.getValue());
					thiscookie = cookie.getValue();		
				}
			}
				
		}
		
		if (thiscookie == null) {
			// person is null means the user is not logged in. 
			// forward user to login page
			request.getRequestDispatcher("login.jsp").forward(request,  response);
		} else {
			// if person is logged in then continue with the request
			System.out.println("NAGCONTINUE");
			chain.doFilter(request, response);
		}
		
	}

	// implement the other methods required in the interface 
	// but leave as empty usually used for clean up etc.
	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}	

}
