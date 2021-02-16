

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Withdraw
 */
public class Withdraw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Withdraw() {
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
        String amount = request.getParameter("amount");
        String user_name = request.getParameter("user_name");
        String id = String.format("%04d", new Random().nextInt(10000));
        String transaction_id = "trans"+id;
//declare a connection by using Connection interface
        try {
            String connectionURL = "jdbc:mysql://localhost/bank_management_system";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection(connectionURL, "root", "tallu");
            Statement stat = con.createStatement();

            String InsertQuery = "update details set amount = amount - '" + amount + "'  where account_id = '" + account_id + "'";
          
            stat.executeUpdate(InsertQuery);
            String Query = "insert into transaction(transaction_id,account_id,amount,transaction_type) values('"+transaction_id+"','" + account_id + "','" + amount + "','Withdraw')";

            stat.executeUpdate(Query);
           

        } catch (Exception e) {
            e.printStackTrace();
        }
        //System.out.println("megha");
        response.sendRedirect("withdraw.jsp");
	}

}
