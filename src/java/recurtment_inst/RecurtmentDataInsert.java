/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package recurtment_inst;
import imagepack.imageData1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Tilaksingh
 */
public class RecurtmentDataInsert {
  Connection c;
String Designation,Unit_Name,Unit_Id ,Full_Name_of_Employe,Date_of_Birth,Date_of_Joining,emp_name,DOB,date_of_joining,  blood_group,  permanant_address,
        temp_address,  pin_code1,  pin_code2,  addar_no,  pan_card_no,  epf_no,  ESIC_no , bank_acc_no,  mobile_no,  
        Marital_Status,  qualification,  date_of_passing,  percentage,  identification_mark,  university,  experience, 
        father_name , mother_name,  spouse_name,  son_name,  daughter_name , hobbies,  emr_contact_person_name,
        emr_contact_person_address , emr_contact_person_mobile_no, unit_name,  designation  ,photo, Bank_Name,IFSC_No,
        father_dob,father_aadhar,Gender,mother_dob,mother_aadhar,spouse_dob,sopuse_aadhar,son_dob,son_aadhar,daughter_dob,daughter_aadhar;

public void RecurtmentDataInsertx1(String prname[])
{
for(int i=0;i<prname.length;i++)
    System.out.println("====>"+prname[i]);

Designation=prname[1];
System.out.println("Designation"+Designation);
Unit_Name=prname[2];
Unit_Id =prname[3];
emp_name=prname[4];
 DOB=prname[5];
 Date_of_Joining=prname[6];
 blood_group=prname[7];
 permanant_address=prname[8];
 pin_code1=prname[9];
 temp_address=prname[10];
 pin_code2=prname[11];
 addar_no=prname[12];
 pan_card_no=prname[13];
 epf_no=prname[14];
 ESIC_no=prname[15];
 Bank_Name=prname[26];
 System.out.println("Bank_Name"+Bank_Name);
 bank_acc_no=prname[27];
 System.out.println("bank_acc_no"+bank_acc_no);
 IFSC_No=prname[28];
 System.out.println("IFSC_No"+IFSC_No);
 mobile_no=prname[16];
 System.out.println("mobile_no"+mobile_no);
 Marital_Status=prname[17];
 Gender=prname[18];
 System.out.println("Marital_Status"+Marital_Status);
 identification_mark=prname[19];
 System.out.println("identification_mark"+identification_mark);
 experience=prname[20];
 System.out.println("experience"+experience);
 qualification=prname[21];
 System.out.println("qualifivation======>"+qualification);
 date_of_passing=prname[22];
 System.out.println("date_of_passing"+date_of_passing);
 percentage=prname[23];
 System.out.println("percentage"+percentage);
 university=prname[24];
 System.out.println("university"+university);
 hobbies=prname[25];
 System.out.println("hobbies"+hobbies);
 emr_contact_person_name=prname[29];
 System.out.println("emr_contact_person_name"+emr_contact_person_name);
 emr_contact_person_address=prname[30];
 System.out.println("emr_contact_person_address"+emr_contact_person_address);
emr_contact_person_mobile_no=prname[31];
System.out.println("emr_contact_person_mobile_no"+emr_contact_person_mobile_no);
 father_name=prname[32];
 System.out.println("father_name"+father_name);
father_dob=prname[34];
System.out.println("father_dob"+father_dob);
father_aadhar=prname[33];
System.out.println("father_aadhar"+father_aadhar);
 mother_name=prname[35];
 System.out.println("mother_name"+mother_name);
mother_dob=prname[37];
System.out.println("mother_dob"+mother_dob);
mother_aadhar=prname[36];
System.out.println("mother_aadhar"+mother_aadhar);
 spouse_name=prname[38];
 System.out.println("spouse_name"+spouse_name);
spouse_dob=prname[40];
System.out.println("spouse_dob"+spouse_dob);
sopuse_aadhar=prname[39];
System.out.println("sopuse_aadhar"+sopuse_aadhar);
 son_name=prname[41];
 System.out.println("son_name"+son_name);
son_dob=prname[43];
System.out.println("son_dob"+son_dob);
son_aadhar=prname[42];
System.out.println("son_aadhar"+son_aadhar);
 daughter_name=prname[44];
 System.out.println("daughter_name"+daughter_name);
daughter_dob=prname[46];
System.out.println("daughter_dob"+daughter_dob);
daughter_aadhar=prname[45];
System.out.println("daughter_aadhar"+daughter_aadhar);
 
System.out.println("===============================>"+emr_contact_person_mobile_no);

 photo=null;
 
     
         
  try{
    Class.forName("com.mysql.jdbc.Driver");
    
    c=DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/security_force","root","9QT2{gZvm[Gx~b");
    
    System.out.println("connecting with database");
    

    PreparedStatement pst2= c.prepareStatement("insert into abhijtrecruitment (Designation,Unit_Name,Unit_Id ,emp_name,DOB,Date_of_Joining,blood_group,permanant_address,pin_code1,temp_address,pin_code2,addar_no,pan_card_no,epf_no,ESIC_no,Bank_Name,bank_acc_no,IFSC_No,mobile_no,Marital_Status,Gender,qualification,date_of_passing,percentage,identification_mark,university,experience,father_name,father_dob,father_aadhar,mother_name,mother_dob,mother_aadhar,spouse_name,spouse_dob,sopuse_aadhar,son_name,son_dob,son_aadhar,daughter_name,daughter_dob,daughter_aadhar,hobbies,emr_contact_person_name,emr_contact_person_address,emr_contact_person_mobile_no,photo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
       
           pst2.setObject(1,Designation.replace(" ", "_"));
           pst2.setObject(2,Unit_Name.replace(" ", "_"));
           pst2.setObject(3,Unit_Id.replace(" ", "_"));
           pst2.setObject(4,emp_name.replace(" ", "_"));
           pst2.setObject(5,DOB.replace(" ", "_"));
           pst2.setObject(6,Date_of_Joining.replace(" ", "_"));
          // pst2.setObject(4,Emp_id);
           pst2.setObject(7,blood_group.replace(" ", "_"));
           pst2.setObject(8,permanant_address.replace(" ", "_"));
           pst2.setObject(9,pin_code1.replace(" ", "_"));
           pst2.setObject(10,temp_address.replace(" ", "_"));
           pst2.setObject(11,pin_code2.replace(" ", "_"));
           pst2.setObject(12,addar_no.replace(" ", "_"));
           pst2.setObject(13,pan_card_no.replace(" ", "_"));
           pst2.setObject(14,epf_no.replace(" ", "_"));
           pst2.setObject(15,ESIC_no.replace(" ", "_"));
           pst2.setObject(16,Bank_Name.replace(" ", "_"));
           pst2.setObject(17,bank_acc_no.replace(" ", "_"));
           pst2.setObject(18,IFSC_No.replace(" ", "_"));
           pst2.setObject(19,mobile_no.replace(" ", "_"));
           pst2.setObject(20,Marital_Status.replace(" ", "_"));
           pst2.setObject(21,Gender.replace(" ", "_"));
           pst2.setObject(22,qualification.replace(" ", "_"));
           //pst2.setObject(14,maritial_status);
           pst2.setObject(23,date_of_passing.replace(" ", "_"));
           pst2.setObject(24,percentage.replace(" ", "_"));
           pst2.setObject(25,identification_mark.replace(" ", "_"));
           pst2.setObject(26,university.replace(" ", "_"));
           pst2.setObject(27,experience.replace(" ", "_"));
           pst2.setObject(28,father_name.replace(" ", "_"));
           pst2.setObject(29,father_dob.replace(" ", "_"));
           pst2.setObject(30,father_aadhar.replace(" ", "_"));
           pst2.setObject(31,mother_name.replace(" ", "_"));
           pst2.setObject(32,mother_dob.replace(" ", "_"));
           pst2.setObject(33,mother_aadhar.replace(" ", "_"));
           pst2.setObject(34,spouse_name.replace(" ", "_"));
           pst2.setObject(35,spouse_dob.replace(" ", "_"));
           pst2.setObject(36,sopuse_aadhar.replace(" ", "_"));
           pst2.setObject(37,son_name.replace(" ", "_"));
           pst2.setObject(38,son_dob.replace(" ", "_"));
           pst2.setObject(39,son_aadhar.replace(" ", "_"));
           pst2.setObject(40,daughter_name.replace(" ", "_"));
           pst2.setObject(41,daughter_dob.replace(" ", "_"));
           pst2.setObject(42,daughter_aadhar.replace(" ", "_"));
           pst2.setObject(43,hobbies.replace(" ", "_"));
           pst2.setObject(44,emr_contact_person_name.replace(" ", "_"));
           pst2.setObject(45,emr_contact_person_address.replace(" ", "_"));
           pst2.setObject(46,emr_contact_person_mobile_no.replace(" ", "_"));
          
             System.out.println("REcord inserted succesfully======================>");

           pst2.setObject(47,photo);
    
           int y =pst2.executeUpdate();

    
//           int y =pst2.executeUpdate();
   if(y>=0){
     System.out.println("REcord inserted succesfully");
   PreparedStatement pst3= c.prepareStatement("select emp_id from abhijtrecruitment");
   ResultSet rs5 = pst3.executeQuery();
   rs5.last();
   int Count = rs5.getInt(1);
   imageData1 imgObj = new imageData1();
   imgObj.imageData2(Count);
       System.out.println("datainsert");

   }                
   else
       System.out.println("not inserted");
   System.err.print("not insert");
    }
  catch(Exception k){
      System.out.println("======================>DataInst==>"+k);
          }
   
}

 
}
