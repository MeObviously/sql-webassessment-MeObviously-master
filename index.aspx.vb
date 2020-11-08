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
            MsgBox("Your listing has been accepted.",, "St Callahan's College")
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
End Class