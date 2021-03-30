/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
import com.mysql.jdbc.StringUtils;
import static com.sun.org.apache.xerces.internal.util.FeatureState.is;
import static com.sun.org.apache.xerces.internal.util.PropertyState.is;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import static scala.collection.MapLike$class.values;

public class Upload_Employee {
    //Object  gate_pass;
	Connection con=null;
	PreparedStatement ps=null;
	int count1;
        ResultSet rs1=null;
        PreparedStatement ps1=null;
        
	Upload_Employee(){
		try {
//	Class.forName("com.mysql.jdbc.Driver");
//	con= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
       
	}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	public void getconnection(String value[]) throws SQLException {
		System.out.println(value[0]+"  "+value[1]+"   "+value[2]);
	           System.out.println("value=======>"+Arrays.toString(value));
		try {
                    Class.forName("com.mysql.jdbc.Driver");
                    System.out.println("Start-------");
	con= DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
		ps=con.prepareStatement("insert into recruitment_table(UAN_NO,Full_Name,Pf_No,sname,Father_Name,relationship,Date_Of_Birth,pencel,Date,Bank_Name,Account_No,IFSC_Code,Adhar_No,Pan_No,Mobile_No) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                       ps.setString(1,value[0]);
                     System.out.println(value[0]+"value[0]--->");   
			ps.setString(2,value[1]);
                         System.out.println(value[1]+"value[1]---->");
			ps.setString(3,value[2]);
                         System.out.println(value[2]+"value[2]---> ");
                        ps.setString(4,value[3].replace("_"," "));
                         System.out.println(value[3]+"value[3]->");
                        ps.setString(5,value[4]);
                         System.out.println(value[4]+" value[4]-->");
                        ps.setString(6,value[5]);
                         System.out.println(value[5]+"  ");
                        ps.setString(7, value[6]);
                         System.out.println(value[6]+"  ");
                        ps.setString(8, value[7]);
                         System.out.println(value[7]+"  ");
                        ps.setString(9, value[8]);
                         System.out.println(value[8]+"  ");
                        ps.setString(10, value[9]);
                         System.out.println(value[9]+"  ");
                        ps.setString(11, value[10]);
                         System.out.println(value[10]+"  ");
                        ps.setString(12, value[11]);
                         System.out.println(value[11]+"  ");
                        ps.setString(13, value[12]);
                         System.out.println(value[12]+"  ");
                        ps.setString(14, value[13]);
                         System.out.println(value[13]+"  ");
                        ps.setString(15, value[14]);
                         System.out.println(value[14]+"  ");
                        
			count1=ps.executeUpdate();
                         if(count1>0)
                         {
                         
                         
                         }
                      
		} 
		catch (Exception e) {
		                  System.out.println("db_connection"+e);
			e.printStackTrace();
		}
               
                
             
	}

}