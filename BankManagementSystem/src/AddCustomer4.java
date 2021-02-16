

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCustomer4
 */
public class AddCustomer4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomer4() {
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
		String account_id = request.getParameter("account_id");
		System.out.println(account_id);
		String security_pin = request.getParameter("security_pin");
		String pan_no = request.getParameter("pan_no");
		String mob_no = request.getParameter("mobile");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "UPDATE add_customer SET account_id = '"+account_id+"', security_pin = '"+security_pin+"'"
				+ " WHERE pan_no = '"+pan_no+"' && mob_no = '"+mob_no+"'";
		String query1 = "INSERT INTO details(account_id, amount)VALUES('"+account_id+"', '0')";
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int i = st.executeUpdate(query);
			st.close();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int i = st.executeUpdate(query1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("add_customer.jsp");
	}

}
