

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FD
 */
public class FD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account_id = request.getParameter("account_id");
        String user_name = request.getParameter("user_name");
        String fd_amount = request.getParameter("amount");
        String fd_number = request.getParameter("fd_number");
        String fd_period = request.getParameter("period");
        String fd_auto = request.getParameter("radio1");
        String fd_mode = request.getParameter("radio2");
        String fd_manager = request.getParameter("manager_name");
        String fd_pin = request.getParameter("pin");
        String fd_date = request.getParameter("date");
        java.util.Date date = new java.util.Date();
//declare a connection by using Connection interface
        Connection con = null;
        Statement stat = null;
        String id = String.format("%04d", new Random().nextInt(10000));
        String transaction_id = "trans"+id;
        try {
            String connectionURL = "jdbc:mysql://localhost/bank_management_system";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(connectionURL, "root", "tallu");
            System.out.println("Connection Opened to database.");
            stat = con.createStatement();
            String InsertQuery = "update details set fd_id = '" + fd_number + "',fd_amount='" + fd_amount + "',fd_period='" + fd_period + "',fd_auto='" + fd_auto + "',fd_mode='" + fd_mode + "',fd_manager='" + fd_manager + "',fd_pin='" + fd_pin + "',fd_date='" + fd_date + "'  where account_id = '" + account_id + "';";
            

            stat.executeUpdate(InsertQuery);
            

        } catch (Exception e) {
            System.out.println(e);
        }
        try{
            String Query = "insert into transaction(transaction_id,account_id,amount,transaction_type) values('"+transaction_id+"','" + account_id + "','" + fd_amount + "','Fixed Deposit');";
            stat.executeUpdate(Query);
        }
        catch (Exception e) {
            System.out.println(e);
        }
        response.sendRedirect("fd.jsp");
	}

}
