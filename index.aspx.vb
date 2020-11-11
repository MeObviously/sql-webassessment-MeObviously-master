Imports System.Data.SqlClient
Imports System.Configuration

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
        Dim strPhone As String = txtPhone.Text
        Dim intID As Integer = -5

        ' Setup to parse user input into a date
        Dim provider As System.Globalization.CultureInfo = System.Globalization.CultureInfo.InvariantCulture
        Dim dteNewDateFound As New Date()

        ' Inset new record
        Dim strSQL As String = "INSERT INTO tblLostProp ([Item], [Brand], [Colour], [Size], [DateFound], [Named], [Name], [Phone]) VALUES ("
        strSQL &= "@item, @brand, @colour, @size, @datefound, @named, @name, @phone)"
        Dim sqlCmd As SqlCommand
        Dim sqlConn As New SqlConnection(strConn)

        Try
            ' Parse user input in DateFound object
            dteNewDateFound = Date.ParseExact(txtDateFound.Text, "dd/mm/yyyy", provider)

            ' Check if record already exists
            intID = CheckRecords(strItem, strBrand, strColour, strSize, strNamed, strName, strPhone, dteNewDateFound)

            If intID <> -1 Then
                plhError.Controls.Add(New LiteralControl("<div class=""error"">This is identical to an existing listing. Please try again.</div>"))
                Exit Sub
            End If


            ' Open connection
            sqlConn.Open()
            sqlCmd = New SqlCommand(strSQL, sqlConn)

            With sqlCmd.Parameters
                .AddWithValue("@item", strItem)
                .AddWithValue("@brand", strBrand)
                .AddWithValue("@colour", strColour)
                .AddWithValue("@size", strSize)
                .AddWithValue("@datefound", dteNewDateFound)
                .AddWithValue("@named", strNamed)
                .AddWithValue("@name", strName)
                .AddWithValue("@phone", strPhone)
            End With

            ' Execute query 
            sqlCmd.ExecuteNonQuery()

            ' Success message for user
            'MsgBox("Your listing has been accepted.",, "St Callahan's College")
            Call ClearForm()

        Catch fex As FormatException
            MsgBox("You have entered an invalid date. Please check your entry and try again.")
            Exit Sub

        Catch ex As Exception
            ' Failure message for user
            MsgBox("An error occured while processing your request.",, "Processing Error")

        Finally
            ' Check connection status and close
            If sqlConn.State = ConnectionState.Open Then
                sqlConn.Close()
            End If

        End Try

        ' Set Session object
        intID = CheckRecords(strItem, strBrand, strColour, strSize, strNamed, strName, strPhone, dteNewDateFound)
        Session("LID") = intID

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
        txtDateFound.Text = ""
        ddlNamed.Text = "--Choose--"
        txtName.Text = ""
        txtPhone.Text = ""

    End Sub

    ''' <summary>
    ''' Uses user input the retrieve the ID of the latest record saved to the database. It then adds the ID to the session object for use on the success page
    ''' </summary>
    ''' <param name="strItem"> Item from the form </param>
    ''' <param name="strBrand"> Brand from the form </param>
    ''' <param name="strColour"> Colour from the form </param>
    ''' <param name="strSize"> Size from the form </param>
    ''' <param name="strNamed"> Named from the form</param>
    ''' <param name="strName"> Name from the form </param>
    ''' <param name="strPhone"> Phone from the form </param>
    ''' <param name="datDateFound"> DateFound from the form </param>
    ''' <returns> -1 if record doesn't exist, or the record ID if it does exist </returns>
    Private Function CheckRecords(strItem As String, strBrand As String, strColour As String, strSize As String, strNamed As String, strName As String, strPhone As String, datDateFound As Date) As Integer
        ' Create new sql statement 

        ' full version with DateFound check
        'Dim strSQL As String = "SELECT Id FROM tblLostProp WHERE [Item] = @item AND [Brand] = @brand AND [Colour] = @colour AND [Size] = @size AND [Named] = @named AND [Name] = @name AND [Phone] = @phone AND [DateFound] = @datefound"

        ' limited version without DateFound check (as issues matching dates)
        Dim strSQL As String = "SELECT Id FROM tblLostProp WHERE [Item] = @item AND [Brand] = @brand AND [Colour] = @colour AND [Size] = @size AND [Named] = @named AND [Name] = @name AND [Phone] = @phone "

        ' Objects for communication with database
        Dim sqlCmd As New SqlCommand

        ' Complete query
        With sqlCmd.Parameters
            .AddWithValue("@item", strItem)
            .AddWithValue("@brand", strBrand)
            .AddWithValue("@colour", strColour)
            .AddWithValue("@size", strSize)
            .AddWithValue("@named", strNamed)
            .AddWithValue("@name", strName)
            .AddWithValue("@phone", strPhone)
            .AddWithValue("@datefound", datDateFound)
        End With

        sqlCmd.CommandText = strSQL

        ' Run query
        Dim ds As DataSet = QueryDB(sqlCmd)

        ' Check a row has been returned.
        If ds.Tables(0).Rows.Count > 0 Then
            Return ds.Tables(0).Rows(0).Item(0)

        End If

        Return -1

    End Function

End Class