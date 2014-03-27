<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="./stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">

      
    <div id="wrap">  
    <h1> Wicked Easy Reciepes </h1>
    <h2> Using 5 Ingredients or Less </h2>
        

        
         <div id="nav">
	<ul>
		<li> <a href="Default.aspx">Home</a>  </li> 
		<li> <a href="newrecipe.aspx">New Reciepe</a> </li> 
        <li> <a href="aboutus.aspx">About</a> </li> 
		<li> <a href="contactus.aspx">Contact Us</a> </li>
	</ul>
        </div>


     

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" DeleteCommand="DELETE FROM [Table] WHERE [reID] = @reID" InsertCommand="INSERT INTO [Table] ([reName], [reSubmit], [reIngredient1], [reIngredient2], [reIngredient3], [reIngredient4], [rePreparation], [reNotes]) VALUES (@reName, @reSubmit, @reIngredient1, @reIngredient2, @reIngredient3, @reIngredient4, @rePreparation, @reNotes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIngredient1] = @reIngredient1, [reIngredient2] = @reIngredient2, [reIngredient3] = @reIngredient3, [reIngredient4] = @reIngredient4, [rePreparation] = @rePreparation, [reNotes] = @reNotes WHERE [reID] = @reID">
            <DeleteParameters>
                <asp:Parameter Name="reID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIngredient1" Type="String" />
                <asp:Parameter Name="reIngredient2" Type="String" />
                <asp:Parameter Name="reIngredient3" Type="String" />
                <asp:Parameter Name="reIngredient4" Type="String" />
                <asp:Parameter Name="rePreparation" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIngredient1" Type="String" />
                <asp:Parameter Name="reIngredient2" Type="String" />
                <asp:Parameter Name="reIngredient3" Type="String" />
                <asp:Parameter Name="reIngredient4" Type="String" />
                <asp:Parameter Name="rePreparation" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
                <asp:Parameter Name="reID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        

      

        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="SqlDataSource1" Width="450px">
             <Columns>
                <asp:BoundField DataField="reName" HeaderText="Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submit" SortExpression="reSubmit" />
                <asp:HyperLinkField DataNavigateUrlFields="reID" DataNavigateUrlFormatString="details.aspx?reID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>

        <br /><br />
        
        <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
    
    </div>
    </form>
</body>
</html>
