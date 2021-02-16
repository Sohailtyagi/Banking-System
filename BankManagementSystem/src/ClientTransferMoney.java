

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClientTransferMoney
 */
public class ClientTransferMoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientTransferMoney() {
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
		String transfer_to = request.getParameter("transfer_to");
		String id = String.format("%04d", new Random().nextInt(10000));
        String transaction_id = "trans"+id;
		String amount_to_transfer = request.getParameter("amount");
		String security_pin = request.getParameter("security_pin");
		String url = "jdbc:mysql://localhost/bank_management_system";
		String username = "root";
		String password = "tallu";
		String query = "SELECT * FROM add_customer WHERE account_id = '"+account_id+"'";
		String security_no = "";
		System.out.println(account_id+","+transfer_to+","+transaction_id+","+amount_to_transfer+","+security_pin);
		String query1 = "INSERT INTO transaction(transaction_id, account_id, transaction_type, amount, transfer_to)VALUES('"+transaction_id+"', '"+account_id+"', 'Money Transfer', '"+amount_to_transfer+"', '"+transfer_to+"')";
		String query2 = "INSERT INTO transaction(transaction_id, account_id, transaction_type, amount)VALUES('"+transaction_id+"', '"+transfer_to+"', 'Money Transfer', '"+amount_to_transfer+"')";
		String query3 = "UPDATE details SET amount = amount - '"+amount_to_transfer+"' WHERE account_id = '"+account_id+"'";
		String query4 = "UPDATE details SET amount = amount + '"+amount_to_transfer+"' WHERE account_id = '"+transfer_to+"'";
		
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next()) {
				security_no = rs.getString("security_pin");
			}
			rs.close();
			st.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			Statement st = con.createStatement();
			if(security_pin.toString().equals(security_pin.toString())) {
				int a = st.executeUpdate(query1);
			}
			st.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			Statement st = con.createStatement();
			if(security_pin.toString().equals(security_pin.toString())) {
				int a = st.executeUpdate(query2);
			}
			st.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			Statement st = con.createStatement();
			if(security_pin.toString().equals(security_pin.toString())) {
				int a = st.executeUpdate(query3);
			}
			st.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			Statement st = con.createStatement();
			if(security_pin.toString().equals(security_pin.toString())) {
				int a = st.executeUpdate(query4);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("client_transfer_money.jsp");
	}

}
