

import java.io.IOException;
import java.sql.*;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RD
 */
public class RD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RD() {
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
         String rd_amount = request.getParameter("amount");
         String rd_number = request.getParameter("rd_number");
         String rd_period = request.getParameter("period");
         String rd_monthly_pay = request.getParameter("rd_monthly_pay");
         String rd_mode = request.getParameter("radio");
         String rd_manager = request.getParameter("manager_name");
         String rd_pin = request.getParameter("pin");
         String rd_date = request.getParameter("date");
         String id = String.format("%04d", new Random().nextInt(10000));
         String transaction_id = "trans"+id;
//declare a connection by using Connection interface
         Connection con = null;
         Statement stat = null;
         try {
             String connectionURL = "jdbc:mysql://localhost/bank_management_system";
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             con = DriverManager.getConnection(connectionURL, "root", "tallu");
             System.out.println("Connection Opened to database.");
             stat = con.createStatement();
             String InsertQuery = "update details set rd_id = '" + rd_number + "',rd_amount='" + rd_amount + "',rd_period='" + rd_period + "',rd_mode='" + rd_mode + "',rd_manager='" + rd_manager + "',rd_pin='" + rd_pin + "',rd_date='" + rd_date + "',rd_monthly_pay = '"+rd_monthly_pay+"'  where account_id = '" + account_id + "';";
             

             stat.executeUpdate(InsertQuery);
         

         } catch (Exception e) {
             System.out.println(e);
         }
         //System.out.println("megha");
         try{
             String Query = "insert into transaction(transaction_id,account_id,amount,transaction_type) values('"+transaction_id+"','" + account_id + "','" + rd_amount + "','Recurring Deposit');";
             stat.executeUpdate(Query);
         }
         catch (Exception e) {
             System.out.println(e);
         }
         response.sendRedirect("rd.jsp");


	}

}
