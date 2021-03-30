/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package imagepack;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static com.itextpdf.text.pdf.PdfFileSpecification.url;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CopyI {
    
    Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        InputStream is = null;
        OutputStream os = null;
       String url1="jdbc:mysql://103.14.99.198:3306/security_force";
       String user ="root";
       String password ="9QT2{gZvm[Gx~b";
                        	
       String filePath ="images/Tom.jpg";
      static int i=0;
public void imageData2(int ide)
       {
        try {
            Class.forName("com.mysql.jdbc.Driver");
       
    Connection conn = DriverManager.getConnection(url1, user, password);
    String sql = "SELECT Photo FROM security_recruityment where emp_id="+ide;
    PreparedStatement statement = conn.prepareStatement(sql);
    
    ResultSet rus = statement.executeQuery();
    System.out.println("hello");

    if(rus.next()){
                is = rus.getBinaryStream(1);
            }
          //  is = new FileInputStream(new File("Student_img.jpg"));
            os = new FileOutputStream("c/DesktopSecurityForce/security_force/web/images/Tom"+i+".jpg");
            i++;
            System.out.println("hello2");
            byte[] content = new byte[1024];
            int size = 0;
            while((size=is.read(content)) != -1){
                os.write(content,0,size);
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
          } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
          } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
          } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
          } finally{
            try{
               // if(os != null) os.flush();
                if(is != null) is.close();
                if(os != null) os.close();
                if(st != null) st.close();
                if(con != null) con.close();
            } catch(IOException ex){} catch (SQLException ex) {
        }
       }
}

}
     

