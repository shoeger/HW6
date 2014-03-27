<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="./css/style.css" />
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
        <li> <a href="Recipes.aspx">Recipes</a>  </li>
		<li> <a href="newrecipe.aspx">New Reciepe</a> </li> 
        <li> <a href="aboutus.aspx">About</a> </li> 
		<li> <a href="contactus.aspx">Contact Us</a> </li>
	</ul>
        </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" DeleteCommand="DELETE FROM [Table] WHERE [reID] = @reID" InsertCommand="INSERT INTO [Table] ([reName], [reSubmit], [reIngredient1], [reIngredient2], [reIngredient3], [reIngredient4], [rePreparation], [reNotes]) VALUES (@reName, @reSubmit, @reIngredient1, @reIngredient2, @reIngredient3, @reIngredient4, @rePreparation, @reNotes)" SelectCommand="SELECT * FROM [Table] WHERE ([reID] = @reID)" UpdateCommand="UPDATE [Table] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIngredient1] = @reIngredient1, [reIngredient2] = @reIngredient2, [reIngredient3] = @reIngredient3, [reIngredient4] = @reIngredient4, [rePreparation] = @rePreparation, [reNotes] = @reNotes WHERE [reID] = @reID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="reID" QueryStringField="reID" Type="Int32" />
            </SelectParameters>
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
          <br />
        
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="reID" CssClass="grid-view" DataSourceID="SqlDataSource1" Height="50px" Width="277px">
            <Fields>
                <asp:BoundField DataField="reName" HeaderText="Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submit" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIngredient1" HeaderText="Ingredient 1" SortExpression="reIngredient1" />
                <asp:BoundField DataField="reIngredient2" HeaderText="Ingredient 2" SortExpression="reIngredient2" />
                <asp:BoundField DataField="reIngredient3" HeaderText="Ingredient 3" SortExpression="reIngredient3" />
                <asp:BoundField DataField="reIngredient4" HeaderText="Ingredient 4" SortExpression="reIngredient4" />
                <asp:BoundField DataField="rePreparation" HeaderText="Preparation" SortExpression="rePreparation" />
                <asp:BoundField DataField="reNotes" HeaderText="Notes" SortExpression="reNotes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

        <div id="footer"> &copy;  Wicked Easy Recipes 2014. </div>
    
    </div>
    </form>
</body>
</html>
