package imagepack;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Base64;
public class imageData1{
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        InputStream is = null;
        OutputStream os = null;
        String url1="jdbc:mysql://103.14.99.198:3306/security_force";
        String user ="root";
        String password ="9QT2{gZvm[Gx~b";
        //String path="D:/image/";
       String imageStr=null;
public String imageData2(int ide)
       {
           String encoded=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url1,user,password);
            String sql="SELECT Photo FROM abhijtrecruitment where emp_id="+ide;
            PreparedStatement statement=conn.prepareStatement(sql);
            ResultSet rs =statement.executeQuery();
           // System.out.println("hello=="+sql);
     
            
            if(rs.next()){
                is = rs.getBinaryStream(1);
            
       byte[] bytes = rs.getBytes(1); 
       
         encoded = Base64.getEncoder().encodeToString(bytes);
      // System.out.println("image string=========="+encoded);
     }
          //  is = new FileInputStream(new File("Student_img.jpg"));
      //     os = new FileOutputStream(path+""+ide+".jpg");
         //o  System.out.println("hello4444444444444"+encoded);
         
          // System.out.println("hello2");
      //     byte[] content = new byte[31457280];
       //    int size = 0;
       //    while((size=is.read(content)) != -1){
        //        os.write(content,0,size);
         //   }
         
       
        } 
        catch(Exception e) {
            // TODO Auto-generated catch block
            System.out.println("hhhh8======================>"+e);
            e.printStackTrace();
//          } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            System.out.println("hhhh8======================>"+e);
//            e.printStackTrace();
//          } catch (FileNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            System.out.println("hhhh7======================>"+e);
//          } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            System.out.println("hhhh6======================>"+e);
//          } 
        }
         finally{
            try{
               // if(os != null) os.flush();
                if(is != null)
                    is.close();
                if(os != null)
                    os.close();
                if(st != null)
                    st.close();
                if(con != null)
                    con.close();
            } catch(IOException ex){
             System.out.println("hhhh6======================>"+ex);
            
            } catch (SQLException ex) {
                ex.printStackTrace();
                System.out.println("hhhh======================>"+ex);
        }
            
       }
         //System.out.println("retun string=========="+encoded);
        return encoded;
}
//  public static void main(String[] args) 
//  {
//  imageData1 im = new imageData1();
//                  im.imageData2(73);
//  }

}
     

