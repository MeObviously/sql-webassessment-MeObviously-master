Imports System.Data.SqlClient
Module Globals
    Public strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\dbLostProperty.mdf';Integrated Security=True"

    ''' <summary>
    ''' Queries the database for data related to recent bookinjg made by the user.
    ''' </summary>
    ''' <returns> A dataset containing listings data </returns>
    Public Function QueryDB(sqlCmd As SqlCommand)
        ' Objects for communication with database
        Dim sqlConn As New SqlConnection(strConn)
        sqlCmd.Connection = sqlConn
        Dim sqlDA As New SqlDataAdapter
        Dim ds As New DataSet

        Try
            ' Open connection
            sqlConn.Open()

            ' Run query and fill dataset
            sqlDA.SelectCommand = sqlCmd
            sqlDA.Fill(ds)

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

        Return ds
    End Function
End Module
