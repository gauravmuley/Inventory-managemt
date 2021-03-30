/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.mysql.jdbc.StringUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.poi.EncryptedDocumentException;
/**
 *
 * @author user
 */

@WebServlet("/newattendance")
@MultipartConfig
public class Upload_Employee_Servlet extends HttpServlet {

	
        String resource=null;
        String fpath=null;
        ServletContext sc=null;
        File file=null;
        InputStream is=null;
        byte[] buffer=null;
        Upload_Employee conn=null;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
         protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            

            try {
                  conn=new Upload_Employee();
           
           // SAMPLE_XLSX_FILE_PATH= request.getParameter("excel");
             resource=request.getParameter("data");
                System.out.println("resourc:::::"+resource);
               Part file=request.getPart("excel1");
         System.out.println("Path:::::"+file.getContentType()+"==="+file.getName()+"file path=="+file.getSubmittedFileName());
       
         
        //read the file from hyperlink
        
       
        //get SErvletContext obj
        sc=getServletContext();
        //Locate the file
        fpath=sc.getRealPath(resource);
        System.out.println(fpath);
                // Creating a Workbook from an Excel file (.xls or .xlsx)
          /*      Workbook workbook = WorkbookFactory.create(new File(fpath));*/
                Workbook workbook = WorkbookFactory.create(file.getInputStream()); 
                // Retrieving the number of sheets in the Workbook
                System.out.println("Workbook has " + workbook.getNumberOfSheets() + " Sheets : ");
                // 2. Or you can use a for-each loop
                System.out.println("Retrieving Sheets using for-each loop");
                for(Sheet sheet: workbook) {
                    String name=sheet.getSheetName();
                    System.out.println("=> " + sheet.getSheetName());
                }
                
                // Getting the Sheet at index zero
                Sheet sheet = workbook.getSheetAt(0);
                System.out.println("  sheet===============>"+sheet);
                // Create a DataFormatter to format and get each cell's value as String
                DataFormatter dataFormatter = new DataFormatter();
                
                
                /* System.out.println("\n\nIterating over Rows and Columns using for-each loop\n");
                for (Row row: sheet) {
                for(Cell cell: row) {
                int i=cell.getColumnIndex();
                String cellValue = dataFormatter.formatCellValue(cell);
                System.out.print(cellValue + "\t");
                }
                System.out.println();
                */
                
                
                System.out.println("\n\nIterating over Rows and Columns using Iterator\n");
                Iterator<Row> rowIterator = sheet.rowIterator();
                while (rowIterator.hasNext()) {
                    Row row1 = rowIterator.next();
                    
                    int j=0;
                    // Now let's iterate over the columns of the current row
                    Iterator<Cell> cellIterator = row1.cellIterator();
                    String []r1=new String[100];
                    
                    while (cellIterator.hasNext()) {
                        
                        Cell cell = cellIterator.next();
                        String cellValue = dataFormatter.formatCellValue(cell);
                        System.out.println(r1.length);
                        StringTokenizer st=new StringTokenizer(cellValue);
                        
                        //  while (st.hasMoreTokens()) {
                        try{
                        r1[j] =st.nextToken(" ");
                        boolean bx=StringUtils.isNullOrEmpty(r1[j]) ; 
                        System.out.println("bx=======> "+bx);
                        if(bx==true){
                        r1[j]=""+bx;
                        }
                        }
                        catch(Exception e){}
                        
                        
                        System.out.println("kk==>"+r1[j]);
                        
                        
                        
                        
                        if(j>=14)
                        {
                           
                            conn.getconnection(r1);
                            
                            
                            System.out.println("inside if ==>"+r1[0]+"=====>  "+r1[1]+"====> "+r1[2]+"===>"+r1[14]);
                            r1=null;
                            j=0;
                            break;
                        }
                        j++;
                    }   System.out.print("j====>waitting"+j);
                    
                }
//            } catch (InvalidFormatException ex) {
////                Logger.getLogger(Excelfile.class.getName()).log(Level.SEVERE, null, ex);
//            } catch (EncryptedDocumentException ex) {
////                Logger.getLogger(Excelfile.class.getName()).log(Level.SEVERE, null, ex);
            }
            catch (Exception e) {
                e.printStackTrace();
            }
                   response.sendRedirect("/Manish_Associated/index.jsp");
	            }
}


