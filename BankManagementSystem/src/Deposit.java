

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deposit
 */
public class Deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deposit() {
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
        String user_name = request.getParameter("user_name");
        String amount = request.getParameter("amount");
        String deposit_to = request.getParameter("radio");
//declare a connection by using Connection interface
        Connection con = null;
        Statement stat = null;
        String id = String.format("%04d", new Random().nextInt(10000));
        String transaction_id = "trans"+id;
        try {
            String connectionURL = "jdbc:mysql://localhost/bank_management_system";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(connectionURL, "root", "tallu");
            stat = con.createStatement();
            if(deposit_to.equals("saving")) {
                String InsertQuery = "update details set amount = amount + '"+amount+"' where account_id = '"+account_id+"';";
                String Query = "insert into transaction(transaction_id,account_id,amount,transaction_type) values('"+transaction_id+"','" + account_id + "','" + amount + "','Deposit');";
                try {
                    stat.executeUpdate(InsertQuery);
                    stat.executeUpdate(Query);
                } catch (SQLException e) {
                    System.out.println(e);
                }
            } 
            if (deposit_to.equals("rd")) {
                String InsertQuery = "update details set rd_deposit_amount = rd_deposit_amount + '"+amount+"' where account_id = '"+account_id+"'";
                String Query = "insert into transaction(transaction_id,account_id,amount,transaction_type) values('"+transaction_id+"','" + account_id + "','" + amount + "','Recurring Monthly Deposit');";
                try {
                    stat.executeUpdate(InsertQuery);
                    stat.executeUpdate(Query);
                } catch (SQLException e) {
                    System.out.println(e);
                }
            }

        }
        catch(Exception e){
            System.out.println(e);
        }
        //System.out.println("megha");
        response.sendRedirect("deposit.jsp");


	}

}
