

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PersonalDetails
 */
public class PersonalDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalDetails() {
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
		System.out.println("chl to rha h");
		String senior_citizen = request.getParameter("senior_citizen");
		String minor = request.getParameter("minor");
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		String fathers_name = request.getParameter("fathers_name");
		String pan_no = request.getParameter("pan_no");
		String date = request.getParameter("dob");
		String nationality = request.getParameter("nationality");
		String gender = request.getParameter("gender");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "INSERT INTO add_customer(senior_citizen, minor, status, name, fathers_name, dob, nationality"
				+ ", gender, pan_no)VALUES('"+senior_citizen+"', '"+minor+"', '"+status+"', '"+name+"', '"+fathers_name+"'"
						+ ", '"+date+"', '"+nationality+"', '"+gender+"', '"+pan_no+"')";
		
		// database connection and insertion of data into database
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int i = st.executeUpdate(query);
			request.setAttribute("pan", pan_no);
			RequestDispatcher dispatcher = request.getRequestDispatcher("add_customer1.jsp");
			dispatcher.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
