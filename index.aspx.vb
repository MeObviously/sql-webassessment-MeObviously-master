Imports System.Data.SqlClient
Public Class index
    Inherits System.Web.UI.Page

    ''' <summary>
    '''     Runs when user clicks submit button
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <see> InsertRecord subroutine </see>


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call InsertRecord()

    End Sub

    ''' <summary>
    ''' Once submitted, it is assumed that the data has been validated
    ''' This subroutine collects the user input and inserts it as a new listing into the local database file.
    ''' It then calls ClearForm to reset the form.
    ''' </summary>
    ''' <see> ClearForm subroutine </see>

    Private Sub InsertRecord()
        ' Collect data
        Dim strItem As String = txtItem.Text
        Dim strBrand As String = txtBrand.Text
        Dim strColour As String = txtColour.Text
        Dim strSize As String = ddlSize.Text
        Dim strNamed As String = ddlNamed.Text
        Dim strName As String = txtName.Text

        ' Inset new record
        Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\dbLostProperty.mdf';Integrated Security=True"
        Dim strSQL As String = "INSERT INTO tblLostProp ([Item], [Brand], [Colour], [Size], [Named], [Name]) VALUES ("
        strSQL &= "@item, @brand, @colour, @size, @named, @name)"
        Dim sqlCmd As SqlCommand
        Dim sqlConn As New SqlConnection(strConn)

        ' Convert Yes/No into boolean
        Dim bitNamed As Boolean

        If strNamed = "Yes" Then
            bitNamed = True
        Else bitNamed = False
        End If

        Try
            ' Open connection
            sqlConn.Open()
            sqlCmd = New SqlCommand(strSQL, sqlConn)

            With sqlCmd.Parameters
                .AddWithValue("@item", strItem)
                .AddWithValue("@brand", strBrand)
                .AddWithValue("@colour", strColour)
                .AddWithValue("@size", strSize)
                .AddWithValue("@named", bitNamed)
                .AddWithValue("@name", strName)
            End With

            ' Execute query 
            sqlCmd.ExecuteNonQuery()

            ' Success message for user
            'MsgBox("Your listing has been accepted.",, "St Callahan's College")
            Call ClearForm()

        Catch ex As Exception
            ' Failure message for user
            MsgBox("An error occured while processing your request.",, "Processing Error")

        Finally
            ' Check connection status and close
            If sqlConn.State = ConnectionState.Open Then
                sqlConn.Close()
            End If

        End Try

        Call SetSessionID(strItem, strBrand, strColour, strSize, bitNamed, strName)
        ' Redirect the user to feedback page
        Response.Redirect("success.aspx")

    End Sub

    ''' <summary>
    '''     Resets the listing form by clearing all relevant form objects
    ''' </summary>
    Private Sub ClearForm()
        ' Clear relevant form objects
        txtItem.Text = ""
        txtBrand.Text = ""
        txtColour.Text = ""
        ddlSize.Text = "--Choose--"
        ddlNamed.Text = "--Choose--"
        txtName.Text = ""

    End Sub

    ''' <summary>
    ''' Uses the user input to rettrieve the ID of the latest record saved to the database. It then adds the ID to the session object for use on the success page.
    ''' </summary>
    ''' <param name="strItem">Item from the form</param>
    ''' <param name="strBrand">Brand from the form</param>
    ''' <param name="strColour">Colours from the forms</param>
    ''' <param name="strSize">Size from the form</param>
    ''' <param name="bitNamed">Yes/No properties of Named from the form</param>
    ''' <param name="strName">Name from the form</param>
    Private Sub SetSessionID(strItem As String, strBrand As String, strColour As String, strSize As String, bitNamed As String, strName As String)
        ' Create new sql statement 
        Dim strSQL As String = "SELECT Id FROM tblLostProp WHERE [Item] = @item AND [Brand] = @brand AND [Colour] = @colour AND [Size] = @size AND [Named] = @named AND [Name] = @name"

        ' Objects for communication with database
        Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\dbLostProperty.mdf';Integrated Security=True"
        Dim sqlCmd As SqlCommand
        Dim sqlConn As New SqlConnection(strConn)
        Dim sqlDA As New SqlDataAdapter
        Dim ds As New DataSet

        Try
            ' Open connection
            sqlConn.Open()
            sqlCmd = New SqlCommand(strSQL, sqlConn)

            With sqlCmd.Parameters
                .AddWithValue("@item", strItem)
                .AddWithValue("@brand", strBrand)
                .AddWithValue("@colour", strColour)
                .AddWithValue("@size", strSize)
                .AddWithValue("@named", bitNamed)
                .AddWithValue("@name", strName)
            End With

            ' Run query and fill dataset
            sqlDA.SelectCommand = sqlCmd
            sqlDA.Fill(ds)

            ' Check a row has been returned
            If ds.Tables(0).Rows.Count > 0 Then
                Dim intID As Integer = ds.Tables(0).Rows(0).Item(0)

                ' Set session object *LID = ListingsID
                Session("LID") = intID
            End If

        Catch ex As Exception
            ' Failure message for user
            MsgBox("An error occured while processing your request.",, "Processing Error")

        Finally
            ' Tidy up resources
            sqlDA.Dispose()
            ds.Dispose()

            ' Check connection status and close
            If sqlConn.State = ConnectionState.Open Then
                sqlConn.Close()
            End If

        End Try
    End Sub
End Class