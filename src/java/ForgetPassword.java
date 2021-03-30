import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ForgetPassword extends HttpServlet {

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname=request.getParameter("uname");
        System.out.println(uname);
        String pass=request.getParameter("pass");
        System.out.println(pass);
        String pass1=request.getParameter("pass1");
        
        System.out.println(pass1);
        
        
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           
           if(pass.equals(pass1))
           
           {
           PreparedStatement stmt=con.prepareStatement("update admin_user1 set Password = ? where username= ? ");
           stmt.setObject(1,pass);
           stmt.setObject(2,uname);
//           ResultSet rs=stmt.executeQuery("select * from admin_user where username='"+uname+"'");
          int i= stmt.executeUpdate();
           if(i >0)
           {
               System.out.println("update success");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Password Change Succesfully..');");
               out.println("location='login.jsp';");
               out.println("</script>");
           }
           else
           {
               System.out.println("not");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Username Not Exist Wrong Attempt!!');");
               out.println("location='forgetpass2.jsp';");
               out.println("</script>");
           }
           }
           else
           {
               System.out.println("pass not match");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Password Not Match Try Again!!');");
               out.println("location='forgetpass2.jsp';");
               out.println("</script>");
           }
            
        }
        catch(Exception e)
        {
            System.out.println("Error::"+e.getCause());
        }
      
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
