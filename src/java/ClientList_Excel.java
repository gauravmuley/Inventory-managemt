/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
import static com.sun.org.apache.xerces.internal.util.FeatureState.is;
import static com.sun.org.apache.xerces.internal.util.PropertyState.is;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

public class ClientList_Excel {
    //Object  gate_pass;
	Connection con=null;
	PreparedStatement ps=null;
	int count1;
        ResultSet rs1=null;
        PreparedStatement ps1=null;
        
	ClientList_Excel(){
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
		ps=con.prepareStatement("insert into client_list(CLIENTS_LIST,COMPANY,CONT_RAGISTER_NO,fILE_NO,EMPLOYER_NAME,DESIGNATION,CONTACT_NO,NG_NAG_NG_AKL,CODE_NO,NEW_USER_NAME,PASSWORD,NEW_PASSWORD,EMAIL_ID,DSC,VALID_FROM,VALID_TO,Due_Date,KYC,FORM_11,KYC_UPDATE,DSC_RETURN,FORM_5_A,FORM_9,CHALLAN_GENERATED,POSTING_COMPLETE,ADDRESS) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
                        ps.setString(16, value[15]);
                         System.out.println(value[15]+"  ");
                        ps.setString(17, value[16]);
                         System.out.println(value[16]+"  ");
                        ps.setString(18, value[17]);
                         System.out.println(value[17]+"  ");
                        ps.setString(19, value[18]);
                         System.out.println(value[18]+"  ");
                        ps.setString(20, value[19]);
                         System.out.println(value[19]+"  ");
                        ps.setString(21, value[20]);
                         System.out.println(value[20]+"  ");
                        ps.setString(22, value[21]);
                         System.out.println(value[21]+"  ");
                        ps.setString(23, value[22]);
                         System.out.println(value[22]+"  ");
                        ps.setString(24, value[23]);
                         System.out.println(value[23]+"  ");
                         ps.setString(25, value[24]);
                         System.out.println(value[24]+"  ");
                        ps.setString(26, value[25]);
                         System.out.println(value[25]+"  "); 
                        
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