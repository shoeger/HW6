<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="SqlDataSource1" Width="1053px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
