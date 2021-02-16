

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ClientLogin
 */
public class ClientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientLogin() {
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
		String security_pin = request.getParameter("security_pin");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "SELECT * FROM add_customer";
		HttpSession session=request.getSession();
		session.setAttribute("account_id", account_id);
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()){
				String acc_id = rs.getString("account_id");
				String security = rs.getString("security_pin");
				if(account_id.toString().equals(acc_id.toString()) && security_pin.toString().equals(security.toString())) {
					response.sendRedirect("client_home.jsp");
				}
			}
			rs.close();
			st.close();
			con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
