<%-- 
    Document   : eportFeedBack
    Created on : Mar 20, 2024, 11:42:49 PM
    Author     : shri 2
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="new.css">
  


  </head>
<body>
    
<section class="sub-header">
            <div class="main">
            <div class="container">
             <nav>
            <ul>
                <li ><a href="AdminHomePage.jsp.jsp">Home<br></a></li>
                <li><a href="AddProduct.jsp">Add Product</a></li>
                <li><a href="AdminShowProduct.jsp">Show Product</a></li>
                <li><a href="Datebetween Order Report.jsp">DatebetweenOrder</a></li>                
                <li><a href="Datebetween Cancel Order.jsp">DatebetweenOrderCancel </a></li>
                <li><a href="ReportRegister.jsp">RegisterReport </a></li>
                <li><a href="ReportFeedBack.jsp">FeedbackReport </a></li>
                <li><a href="MainHomePage.jsp">Logout</a></li>
            </ul>
                            </nav>

                </div>
                
                
                 
            <div class="title6">
                <h1>FeedBack Report</h1>
               
            </div>
           
    
    
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
        
    <div class="registration" align="center">FeedBack Report</div>
    
    <form method="post" name="form">
       
        <div class="user-details" >
           
            
            <table border="2" width="800px">

            
            
<!--            <tr class="input-box" >
                <td colspan="4">  <span class="details">Categroies</span></td>
                <td class="input-box" colspan="4"> <select name="drpcat" style="width: 300px ;height: 40px;border-radius: 5px; border-color: #9b59b6; font-size: medium" >
                    <option>Electronics</option>
                    <option>Furniture</option>
                    <option>Clothing</option>
                    <option>Footwear</option>
                    <option>Auto & Parts</option>
                     <option>HouseHold Item</option>
                </select>
            </td>
           
            
   
        
           
              <tr>-->
                         
<tr><td>Name</td>
                          <td>Mobile No</td>
                        
                          <td>Feedback Message</td>
                       
                         

                      </tr>
<%
            
String nm=null;

String mob=null;

String msg=null;


    Statement st=con.createStatement();

        String str="select * from feedback";
        ResultSet rs=st.executeQuery(str);
        
        while(rs.next())
        {
        
            nm=rs.getString(1);
            mob=rs.getString(2);
             msg=rs.getString(3);
          
          
 %>
           
            

         
           
            <tr>
                        
                          <td><%=nm%></td>
                          <td><%=mob%></td>
                           <td><%=msg%></td> 
                          
                           
                          
                           </tr>
                           <% 
        }
   
  
                           %> 
            </table>
         
        
          </div>
        
        
    
        
                
<!--             <div class="button4" align="center">
               <input type="submit" value="Search Product" name="Search Product">
              
           </div>-->
        </form>
       </div>
    </div> 
        
           
   <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Aditya Dubile and Pratik Khatavkar from SGMCK 2024-25</marquee>
</div>
 
</body>
</html>
