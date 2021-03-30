/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import SecurityBean.DataService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ComboServlet extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
   System.out.println("fulname=combobox===>"); 
   JsonArray data_json=new JsonArray();     //   Jsonarray  object===data_json

   Statement st_loginId=null;
   ResultSet rs=null;
   int login_val=0;
    
  // Object compname;
    JsonObject json_response=new JsonObject();//jsoobject==json_response
//Ifsc_noESIC_nopf_no_abank_nameaccno
    try
    {
       DataService sr=new DataService();
       String  fulname=request.getParameter("fulname");
       System.out.println("company_name=combobox===>"+fulname);
       
       rs=sr.Select_Employee(fulname.trim());
       System.out.println("fulname=combobox===>123" +fulname);
        
       while(rs.next())
        {
            //rs2= s.executeQuery("select Unit_id,emp_id,First_name,Last_name,designation,Ifsc_no,ESIC_no,pf_no_a,bank_name,accno from security_recruityment where Unit_name='"+pr+"'");
       System.out.println("jkjkj "+rs.getString(1));
    //  System.out.println("jkjkj "+rs.getString(1)+"/"+rs.getString(2)+"/"+rs.getString(3)+"/"+rs.getString(4)+"/"+rs.getString(5)+"/"+rs.getString(6)+"/"+rs.getString(7)+"/"+rs.getString(8)+"/"+rs.getString(9));
       System.out.println("fulname=combobox3===>"+fulname);
        login_val++;
            JsonObject json=new JsonObject();
            json.addProperty("value","login"+login_val);
//           String h1=rs.getString(1).replace(" ","_");
           
//           String h2=rs.getString(5).replace(" ","_");
           json.addProperty("text",rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)+"-"+rs.getString(4)+"-"+rs.getString(5)+"-"+rs.getString(6)+"-"+rs.getString(7));
          
          //  json.addProperty("text",rs.getString(1)+"/"+ h1+"/"+rs.getString(3)+"/"+rs.getString(4)+"/"+h2+"/"+rs.getString(6)+"/"+rs.getString(7)+"/"+rs.getString(8)+"/"+rs.getString(9));
            data_json.add(json);
     System.out.println("fulname=combobox4===>"+fulname);
        }
        System.out.println("fulname=combobox5===>"+fulname);
        System.out.println(data_json);
        json_response.add("aaData", data_json);
  System.out.println("fulname=combobox6===>"+ fulname);
        response.setContentType("application/Json");
  System.out.println("fulname=combobox7===>"+fulname);
        response.getWriter().write(json_response.toString());
  System.out.println("fulname=combobox8===>"+fulname);
        System.out.println(json_response);
    }

catch(Exception ex2)
    {   
        
        System.out.println("Exception occured during retrieval of Login_Id in ComboBox :"+ex2);
        ex2.printStackTrace();
    }
}

}

