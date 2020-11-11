Imports System.Data.SqlClient

Public Class success
    Inherits System.Web.UI.Page

    ''' <summary>
    ''' Queries database for recently inserted record form index page based on Session("LID"). 
    ''' It thencreates a table using a StringBuilder object to display the data in a placeholder object on the success.aspx.vb page.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' StringBuilder to create table
        Dim strBuilder As StringBuilder = New StringBuilder()

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
        strBuilder.Append("<th class=""results"">DateFound</th>")

        'Close header row
        strBuilder.Append("</tr>")

        ' Create new sql statement
        Dim strSQL As String = "SELECT * FROM tblLostProp WHERE [Id] = " & Session("LID")
        Dim sqlCmd As New SqlCommand()
        sqlCmd.CommandText = strSQL

        ' Add table data row
        Dim ds As DataSet = QueryDB(sqlCmd)

        ' Loop through rows to display.
        'At the moment, this should only display one record, bnut we may choose to display multiple records at a later data.
        For Each row As DataRow In ds.Tables(0).Rows

            ' These are formatting dates
            Dim strDateFormat As String = "dd/MM/yyyy"
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

        'Close table and add to placeholder
        strBuilder.Append("</table>")
        plhDataTable.Controls.Add(New LiteralControl(strBuilder.ToString()))

    End Sub

End Class