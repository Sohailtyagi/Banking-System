

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class CustomerData
 */
public class CustomerData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerData() {
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
		String path=null;
		String pan_no = request.getParameter("pan_no");
		String mob_no = request.getParameter("mobile");
		System.out.println(pan_no+" and "+mob_no);
		File file ;
		   int maxFileSize = 50000 * 1024;
		   int maxMemSize = 50000 * 1024;
		   PrintWriter out = response.getWriter();
		   
		   String filePath = "E:/Sohail/";
		   System.out.println("chl rha h");
		   String []paths = new String[5];
		   int a = 0;
		 
		   String contentType = request.getContentType();
		   if ((contentType.indexOf("multipart/form-data") >= 0)) {
			  String count="";
			  System.out.println("1");
		      DiskFileItemFactory factory = new DiskFileItemFactory();
		      factory.setSizeThreshold(maxMemSize);
		      factory.setRepository(new File("c:\\temp"));
		      ServletFileUpload upload = new ServletFileUpload(factory);
		      upload.setSizeMax( maxFileSize );
		      try{ 
		         List fileItems = upload.parseRequest(request);
		         Iterator i = fileItems.iterator();
		         
		         out.println("<html>");
		         out.println("<body>");
		         while ( i.hasNext () ) 
		         {
		            FileItem fi = (FileItem)i.next();
		            if ( !fi.isFormField () )  {
		                String fieldName = fi.getFieldName();
		                path = fi.getName();
		                System.out.println("fieldName="+fieldName+" and "+path);
		                count = "";
		                paths[a] = filePath+path;
	                	a++;
		                char[] c=path.toCharArray();
		                int j=0;
		                for(j=c.length-1;j>=0;j--) {
		                	//System.out.println("c[j]="+c[j]);
		                	//System.out.println("count is "+count);
		                	if(c[j]=='.') {
		                		break;
		                	}
		                }
		                for(int k=j;k<c.length;k++) {
		                	count+=c[k];
		                }
		                System.out.println("String is "+count);
		                if(count.equalsIgnoreCase(".pdf") || count.equalsIgnoreCase(".jpg")) {
		                	boolean isInMemory = fi.isInMemory();
			                long sizeInBytes = fi.getSize();
			                file = new File( filePath + path) ;
			                fi.write( file ) ;
			                out.println("Uploaded Filename: " + filePath + path + "<br>");
			                //
		                }
		                else {
		                	out.println("<script>");
		                	out.println("alert('This file is not OK');");
		                	out.println("</script>");
		                	response.sendRedirect("FileFormat.jsp");
		                }
		            }
		            else {
		            	 String otherFieldName = fi.getFieldName();
		                 String otherFieldValue = fi.getString();
		                 if(fi.getFieldName().equals("pan_no")) {
		                	 pan_no=fi.getString();
		                 }
		                 if(fi.getFieldName().equals("mobile")) {
		                	 mob_no=fi.getString();
		                 }
//		                 System.out.println("other="+otherFieldName+" and "+otherFieldValue);
//		                 System.out.println("subcode="+subcode);
//		                 System.out.println("marksobtain="+marks);
		            }
		         }
		         
		         out.println("</body>");
		         out.println("</html>");
		      }catch(Exception ex) {
		         System.out.println(ex);
		      }
		      System.out.println("pan_no="+pan_no);
		      System.out.println("mobile="+mob_no);
		      System.out.println("paths[0]="+paths[0]);
		      System.out.println("paths[1]="+paths[1]);
		      System.out.println("paths[2]="+paths[2]);
		      System.out.println("path="+path);
		      String url = "jdbc:mysql://localhost/bank_management_system";
				String username = "root";
				String password = "tallu";
				String query = "UPDATE add_customer SET photo = '"+paths[0]+"', signature = '"+paths[1]+"', thumbprint = '"+paths[2]+"'"
						+", id_proof = '"+paths[3]+"' where pan_no = '"+pan_no+"' && mob_no = '"+mob_no+"'";
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = DriverManager.getConnection(url, username, password);
					Statement st = con.createStatement();
					int i = st.executeUpdate(query);
					System.out.println("Inserted");
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				request.setAttribute("mobile", mob_no);
				request.setAttribute("pann", pan_no);
				RequestDispatcher dispatcher = request.getRequestDispatcher("add_customer4.jsp");
				dispatcher.forward(request, response);
	}
	}
}

