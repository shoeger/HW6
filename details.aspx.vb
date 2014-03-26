
Partial Class details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delRecipe As String = e.Values("reName").ToString()

        Response.Write("The record")
        Response.Write("<span class=deletedrecipeshighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been delted from the Recipe Book")

        Response.AddHeader("REFRESH", "3;URL=./Recipes.aspx")


        ' Response.Write("The record has been deleted from the Recipe Book")
    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Recipes.aspx")

    End Sub
End Class
