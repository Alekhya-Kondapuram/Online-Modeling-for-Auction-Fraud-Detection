<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Auction Fraud</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>

<body>
<%
String name=(String)session.getAttribute("name");
String u=(String)session.getAttribute("u");
System.out.println(u);
%>
<div id="wrapper"> 
  <div id="container"> 
    <div id="header"> 
      <div id="logo"><br>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+2" face="Georgia, Times New Roman, Times, serif"> 
        Online Modeling of Proactive Moderation System for <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Auction Fraud Detection</font></strong></div>
    </div>
    <!-- /header -->
    <div id="navbar"> 
      <ul>
        <li><a href="user_home.jsp" >Home</a></li>
        <li><a href="my_products.jsp" class="active">My Products</a></li>
        <li><a href="index.html">Logout</a></li>
        <!-- <li><a href="#">Admin</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>-->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;<font color="#333366" face="Georgia, Times New Roman, Times, serif" size="+1"><strong>welcome:</strong></font> 
        &nbsp;<font color="#FF0000" face="Georgia, Times New Roman, Times, serif" size="+1"><strong><%=name%></strong></font> 
      </ul>
    </div>
    <!-- /navbar -->
    <div id="main"> 
      <div id="intro"> 
        <!-- <div id="sellerpic">
        </div>-->
        <!-- /jakepic -->
        <div id="text"> </div>
        <!-- /text -->
        <table height="350" align="center" width="700">
          <tr bgcolor="#CC3300"> 
            <td width="610" bgcolor="#FBF7E1" ><strong><font color="#FF0000" size="+1" face="Georgia, Times New Roman, Times, serif"><em>My 
              Products</em></font></strong> <br> <br> <form name="f" action="#" method="post" onsubmit="return valid()">
                <table bgcolor="#FFFFFF" width="700" border="0">
                  <tr bgcolor="#E4E4F1"> 
                    <td align="center"><font color="#110022"><strong>Purchase 
                      ID</strong></font></td>
                    <td align="center"> <font color="#110022"><strong>Company 
                      Name</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Product ID</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Product Name</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Warrenty 
                      date</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Product Rate</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Description</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Complaint</strong></font></a></td>
                  </tr>
                  <%
			
			
			
			String pname=null,pid=null,cname=null,purid=null,orate=null,des=null,wdate=null;
ResultSet rs=null;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from purchased where uname='"+name+"' && uid='"+u+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	purid=rs.getString("pur_id");
	cname=rs.getString("comname");
	pid=rs.getString("pid");
	pname=rs.getString("proname");
	wdate=rs.getString("wardate");
	orate=rs.getString("offrate");
	des=rs.getString("offdes");
	
	
%>
                  <tr bgcolor="#FFFFCC"> 
                    <td align="center"> <strong><font color="#FF0000"><%=purid%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=cname%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=pid%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=pname%></font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=wdate%></font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=orate%></font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=des%></font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <a href="user_complaint.jsp?<%=pid%>"><font color="#FF0000"><strong>Complaint</strong></font></a></font></strong></td>
                  </tr>
                  <%	  
}
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
                </table>
              </form></td>
          </tr>
        </table>
      </div>
      <!-- /intro -->
      <div id="columns-wrapper"> 
        <!-- /form-intro -->
        <!-- /newsletter -->
        <!-- /right -->
        <!-- /left -->
      </div>
      <!-- /columns-wrapper -->
    </div>
    <!-- /main -->
    <div id="footer"> 
      <div id="footer-right">&nbsp;</div>
      <div id="footer-left">&nbsp;</div>
      <br>
      <br>
      <strong><font color="#33CC66">WWW.online.com</font></strong> </div>
    <!-- /footer -->
  </div>
  <!-- /container -->
</div>
<!-- /wrapper -->
</body>
</html>
