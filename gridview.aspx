<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Recipes %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="SqlDataSource1" Width="1053px">
            <Columns>
                <asp:BoundField DataField="reID" HeaderText="Recipe ID" InsertVisible="False" ReadOnly="True" SortExpression="reID" />
                <asp:BoundField DataField="reName" HeaderText="Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submit" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIngredient1" HeaderText="Ingredient 1" SortExpression="reIngredient1" />
                <asp:BoundField DataField="reIngredient2" HeaderText="Ingredient 2" SortExpression="reIngredient2" />
                <asp:BoundField DataField="reIngredient3" HeaderText="Ingredient 3" SortExpression="reIngredient3" />
                <asp:BoundField DataField="reIngredient4" HeaderText="Ingredient 4" SortExpression="reIngredient4" />
                <asp:BoundField DataField="rePreparation" HeaderText="Preparation" SortExpression="rePreparation" />
                <asp:BoundField DataField="reNotes" HeaderText="Notes" SortExpression="reNotes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
