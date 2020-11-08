<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="success.aspx.vb" Inherits="SQL_WebAssessment.success" %>

<%Response.WriteFile("header_nav.html") %>

<div class="container">
            <div class="main">
                <h1>Congratulations</h1>
                <p>
                    You have made a listing. Your lost item has now been reported to the school.
                </p>

              <asp:PlaceHolder ID="plhDataTable" runat="server">

              </asp:PlaceHolder>

            </div>
        </div>
    </body>

    <%Response.WriteFile("footer.html") %>
</html>