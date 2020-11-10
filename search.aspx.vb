Imports System.Data.SqlClient

Public Class search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    ''' <summary>
    '''     This sub creates an sql SELECT statement based on user input. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnItemSearch_Click(sender As Object, e As EventArgs) Handles btnItemSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Item] LIKE CONCAT('%',@item, '%')"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@item", txtItem.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input for Brand field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnBrandSearch_Click(sender As Object, e As EventArgs) Handles btnBrandSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Brand] LIKE CONCAT('%',@brand, '%')"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@brand", txtBrand.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input Colour field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnColourSearch_Click(sender As Object, e As EventArgs) Handles btnColourSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Colour] LIKE CONCAT('%',@colour, '%')"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@colour", txtColour.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input for Size field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnSizeSearch_Click(sender As Object, e As EventArgs) Handles btnSizeSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Size] = @size;"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@size", ddlSize.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input for Size field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnPhoneSearch_Click(sender As Object, e As EventArgs) Handles btnPhoneSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Phone] = @phone;"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@phone", txtPhone.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input for Named field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnNamedSearch_Click(sender As Object, e As EventArgs) Handles btnNamedSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Named] = @named;"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@named", ddlNamed.Text)

        Call SetSession(sqlCmd)

    End Sub

    ''' <summary>
    ''' This sub creates an sql SELECT statement based on user input for Name field. It runs the query and adds the results to the session object.
    '''     The user is redirected to a results page to view the data in an html table.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnNameSearch_Click(sender As Object, e As EventArgs) Handles btnNameSearch.Click
        ' Set up query
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Name] LIKE CONCAT('%',@name, '%')"
        Dim sqlCmd As New SqlCommand(strSQL)

        ' Complete query and set sql command
        sqlCmd.Parameters.AddWithValue("@name", txtName.Text)

        Call SetSession(sqlCmd)

    End Sub

    Private Sub SetSession(sqlCmd As SqlCommand)
        ' Run query 
        Dim ds As DataSet = QueryDB(sqlCmd)

        ' Set session object and redirect to display results
        Session("results") = ds
        Response.Redirect("results.aspx")
    End Sub

End Class