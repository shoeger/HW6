<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Contact Us </title>
    <link rel="Stylesheet" type="text/css" href="./stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
  
        <div id="wrap">
        <h1> Wicked Easy Recipes </h1>
        <h2> Web Contact Form </h2>
        


        <div id="nav">


        <ul>
        <li> <a href="Default.aspx">Home</a></li>
		<li> <a href="Recipes.aspx">Recipes</a>  </li> 
		<li> <a href="newrecipe.aspx">New Reciepe</a> </li> 
        <li> <a href="aboutus.aspx">About</a> </li> 
		<li> <a href="contactus.aspx">Contact Us</a> </li>
	    </ul>


        </div>


            <br />
            <br />


        <div id="contact">


   <!-- Check to see if you are in postback.  If not, display the contact form. -->
            <% If Not IsPostBack Then%>


            <br />


        Your email address:<br />
            <br />
        <asp:TextBox ID="senderAddress" runat="server" Width="205px"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br />
            <br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="201px" Width="408px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Send" />


            <br />


        <!-- If you are in postback, display the confirmation label. -->
            <%Else%>


        <!-- End your 'If' statement. -->
            <%End If%>
            <asp:Label ID="confirmSent" runat="server"></asp:Label>


         </div>
        <br />
        <br />


        <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
        <br />


        </div>

    </form>
</body>
</html>
