Public Class results
    Inherits System.Web.UI.Page

    ''' <summary>
    ''' On load, this sub retrieves a DataSet from the session object and then call DisplayTable passin in ds.
    ''' </summary>
    ''' <see> DisplayTable </see>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Grab DataSet from session object
        Dim ds As DataSet = Session("results")

        Call DisplayTable(ds)
    End Sub

    ''' <summary>
    '''     Displays results of DataSet created on search page.
    ''' </summary>
    ''' <param name="ds"></param>
    Private Sub DisplayTable(ds As DataSet)
        ' StringBuilder to create table
        Dim strBuilder As StringBuilder = New StringBuilder()

        ' Check count of records in ds
        If ds.Tables.Count = 0 Or ds.Tables(0).Rows.Count < 1 Then
            strBuilder.Append("<h2>There are no records associated with that search value.</h2>")
        Else


            ' Create table
            strBuilder.Append("<table class=""results"">")

            ' Add table header row
            strBuilder.Append("<tr class=""results"">")
            strBuilder.Append("<th class=""results"">Item</th>")
            strBuilder.Append("<th class=""results"">Brand</th>")
            strBuilder.Append("<th class=""results"">Colour</th>")
            strBuilder.Append("<th class=""results"">Size</th>")
            strBuilder.Append("<th class=""results"">Named</th>")
            strBuilder.Append("<th class=""results"">Name</th>")
            strBuilder.Append("<th class=""results"">Phone</th>")
            strBuilder.Append("<th class=""results"">DateAdded</th>")

            'Close header row
            strBuilder.Append("</tr>")

            ' Loop through rows to display.
            For Each row As DataRow In ds.Tables(0).Rows

                ' These are formatting dates
                Dim strDateFormat As String = "yyyy/MM/dd"
                Dim datDateFound As Date = Date.Parse(row(8).ToString)

                ' Add table row 
                strBuilder.Append("<tr class=""results"">")
                strBuilder.Append("<td class=""results"">" & row(1) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(2) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(3) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(4) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(5) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(6) & "</td>")
                strBuilder.Append("<td class=""results"">" & row(7) & "</td>")
                strBuilder.Append("<td class=""results"">" & datDateFound.ToString(strDateFormat) & "</td>")

                ' Close table row
                strBuilder.Append("</tr>")
            Next

            'Close table
            strBuilder.Append("</table>")

        End If


        ' Link to return to search 
        strBuilder.Append("<br /><a href=""search.aspx"">Return to search</a>")

        ' Show table in placeholder
        plhResults.Controls.Add(New LiteralControl(strBuilder.ToString()))
    End Sub
End Class