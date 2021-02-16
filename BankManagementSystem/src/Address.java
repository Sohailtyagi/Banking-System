

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
 * Servlet implementation class Address
 */
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Address() {
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
		System.out.println("PanNO"+pan_no);
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String pin_no = request.getParameter("pin_no");
		String country = request.getParameter("country");
		String fax_no = request.getParameter("fax_no");
		String mob_no = request.getParameter("mob_no");
		String tel_no = request.getParameter("tel_no");
		String email = request.getParameter("email");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "UPDATE add_customer SET address = '"+address+"', city = '"+pin_no+"', pin_no = '"+pin_no+"'"
				+ ", country = '"+country+"', fax_no = '"+fax_no+"', mob_no = '"+mob_no+"', tel_no = '"+tel_no+"'"
						+ ", email = '"+email+"' WHERE pan_no = '"+pan_no+"'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			int i = st.executeUpdate(query);
			request.setAttribute("mobile", mob_no);
			request.setAttribute("pann", pan_no);
			RequestDispatcher dispatcher = request.getRequestDispatcher("add_customer2.jsp");
			dispatcher.forward(request, response);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
