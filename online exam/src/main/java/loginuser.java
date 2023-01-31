import java.io.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class loginuser
 */
public class loginuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginuser() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		   String username=request.getParameter("uname");
		   String userid=request.getParameter("u_id");
		   String password=request.getParameter("pass");
		   
		   //HttpSession session3=request.getSession();
		   //session3.setAttribute("u_id", userid);
		   //response.sendRedirect("scores.java");
		   
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String sql="select * from users where u_id=? and name=? and password=?";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1,userid);
			ps.setString(2,username);
			ps.setString(3,password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				HttpSession session =request.getSession();
				session.setAttribute("username",username);
				session.setAttribute("userid",userid);
			response.sendRedirect("afterlogin.jsp");
			}
			else{
				response.sendRedirect("InsertUser.jsp");
			}
			con.close();
			
			
		} 
		catch (Exception e) {
			System.out.println(e.toString());
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
