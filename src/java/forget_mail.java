import java.io.IOException;
import java.io.PrintWriter;
import  static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class forget_mail extends HttpServlet {

   

   
String mail;
  String USER_NAME = "aniketlute16";  // GMail user name (just the part before "@gmail.com")
  String PASSWORD = "9975039907"; // GMail password
  //  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        String id=req.getParameter("id");
        System.out.println("Mail is------>"+id);
        String user=req.getParameter("user");
        System.out.println("User------>"+user);
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement pst=con.prepareStatement("select distinct mail_id from admin_user1 where username=?");
           // pst.setString(1, id);
            pst.setString(1, user);
            System.out.println("result start");
            ResultSet i= pst.executeQuery();
            System.out.println("result end");
           
           
            if(i.next())
            {
            String fgf= i.getString(1);
            System.out.println("String is--->"+fgf);
           if(id.equals(fgf))
           {
           String from = USER_NAME;
           String pass = PASSWORD;
           String[] to = { id }; // list of recipient email addresses
           String subject = "Your link for changing Paassword ";
           String body = "http://localhost:8080/security_force_online1762019__working_-_copy/forgetpass2.jsp";
           sendFromGMail(from, pass, to, subject, body);
           }
           else
           {
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Wrong Username Or Email Id 1');");
               out.println("location='forget_mail.jsp';");
               out.println("</script>");
           }
            }
            else
            {
               System.out.println("not");
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Wrong Username Or Email Id');");
               out.println("location='forget_mail.jsp';");
               out.println("</script>");
            }
            
        }
        catch(Exception e)
        {
            System.out.println("Exception is"+e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

       
    public  void sendFromGMail(String from, String pass, String[] to, String subject, String body){
        Properties props = System.getProperties();
        String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        Session session = Session.getDefaultInstance(props);
        MimeMessage message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress(from));
            InternetAddress[] toAddress = new InternetAddress[to.length];

            // To get the array of addresses
            for( int i = 0; i < to.length; i++ ) {
                toAddress[i] = new InternetAddress(to[i]);
            }

            for( int i = 0; i < toAddress.length; i++) {
                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
            }

            message.setSubject(subject);
            message.setText(body);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, from, pass);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        }
        catch (AddressException ae) {
            ae.printStackTrace();
        }
        catch (MessagingException me) {
            me.printStackTrace();
        }
    }
            }
  


