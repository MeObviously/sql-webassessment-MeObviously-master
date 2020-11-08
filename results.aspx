<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="results.aspx.vb" Inherits="SQL_WebAssessment.results" %>

<%Response.WriteFile("header_nav.html") %>

<div class="container">
            <div class="main">
                <h1>Results</h1>
                <!-- Display results from the query -->
                 <asp:PlaceHolder ID="plhResults" runat="server">

              </asp:PlaceHolder>
            </div>
        </div>
    </body>

    <%Response.WriteFile("footer.html") %>
</html>