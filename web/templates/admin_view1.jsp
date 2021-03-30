<%@page import="SecurityBean.DataService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="eror.jsp"%>

<%
//String driverName = "com.mysql.jdbc.Driver";
//String connectionUrl = "jdbc:mysql://103.14.99.198:3306/";
//String dbName = "security_force";
//String userId = "root";
//String password = "9QT2{gZvm[Gx~b";


DataService c1;
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>
                    Manage Admin Users
                </h3>
            </div>

          </div>
          <div class="clearfix"></div>

          <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_content">
                  

                  <table id="" class="table table-striped responsive-utilities jambo_table">
                    <thead>
                      <tr class="headings">
                        <th style="background-color: darkcyan">Username</th>
                        <th style="background-color: darkcyan">Password</th>
                        <th style="background-color: darkcyan">Name</th>
                        <!--<th>Email Id</th>-->
                        <th style="background-color: darkcyan">Roles</th>
                       <th style="background-color: darkcyan">Admin_date</th>
              
                        <th style="background-color: darkcyan" class=" no-link last"><span class="nobr">Action</span>
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                    <%
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://103.14.99.198:3306/manish_associated","root","9QT2{gZvm[Gx~b");
                    System.out.println("connection done");
                    Statement st=con.createStatement();
                    System.out.println("Statement");
                    ResultSet rs=st.executeQuery("select username,password,name,roles,admin_date from admin_user");
                    System.out.println("pass");
                    int i=0;
                   while (rs.next()) {
                    %>
                        <tr id="<%=i%>">
                            <td><%=rs.getString("username")%></td>
                            <td><%=rs.getString("password")%></td>
                            <td><%=rs.getString("name")%></td>
                            <!--<td></%=rs.getString("mail_id")%></td>-->
                            <td><%=rs.getString("roles")%></td>
                            <td><%=rs.getString("admin_date")%></td>
                           
                            <td class=" last">
                                <%--   <button class="btn btn-danger btn-xs" href="#">Delete User</button>--%>
                            <a><button value="<%=rs.getString("admin_date")%>" class="deleteUnit btn btn-danger btn-xs btn_delete" >Delete Users</button></a>
                           <button class="btn btn-primary btn-xs btn_edit" data-toggle="modal" data-target="#unit_guard_details" id="<%=i++%>" href="#">Edit Data</button>
                            </td>
                        </tr>
                    <%
                    }
                        
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    System.out.println("end");
                    %>
                     
                    </tbody>

                  </table>
                  </div>

                    <script>
                $(".deleteUnit").click(function(){
//                alert("goes")
                var result = confirm("Want to delete?");
                var admin_date = $(this).val();
                //alert(deleteid);
                if (result) {
                    $.ajax({
                    type: "POST",
                    url: "DeleteAdmin",
                    data: {
                           admin_date:admin_date
                          },
                        success: function(data){
                        //$('#successMessage2').html('Unit Details Updated Succesfully').delay(5000).fadeOut();
                        $('#successMassage2').show();
                        alert("Deleted Successfully");
                        location.reload();
                        }
                    });
                    return false;
                }
                
            }); 
            
               
                    </script>
                </div>
              </div>
            </div>
          </div>
        </div>
                    
