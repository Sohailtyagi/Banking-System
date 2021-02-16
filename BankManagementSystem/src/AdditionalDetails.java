

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdditionalDetails
 */
public class AdditionalDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdditionalDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pan_no = request.getParameter("pan_no");
		String mobile = request.getParameter("mobile");
		System.out.println("AdditionalDetails="+pan_no+","+mobile);
		String income = request.getParameter("income_text");
		String income_checkbox = request.getParameter("income");
		String profession = request.getParameter("profession");
		String religion = request.getParameter("religion");
		String category = request.getParameter("category");
		String qualification = request.getParameter("qualification");
		String occupation = request.getParameter("occupation");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "UPDATE add_customer SET income = '"+income+"/"+income_checkbox+"', designation = '"+profession+"'"
				+ ", religion = '"+religion+"', category = '"+category+"', qualification = '"+qualification+"'"
						+ ", occupation_type = '"+occupation+"' WHERE pan_no = '"+pan_no+"' && mob_no = '"+mobile+"'";
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int i = st.executeUpdate(query);
			request.setAttribute("mobile", mobile);
			request.setAttribute("pann", pan_no);
			RequestDispatcher dispatcher = request.getRequestDispatcher("add_customer3.jsp");
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
