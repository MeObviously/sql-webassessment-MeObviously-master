<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="SQL_WebAssessment.contact" %>

<%Response.WriteFile("header_nav.html") %>



    <div class="container">
        <div class="main">

            <asp:Panel ID="pnlSearch" runat="server">

            <h1>Contact</h1>


            <p>
                For further information, contact us at:

                    <ul>
                        Phone: 64 1 324 3546<br />
                        Email: stcallahancollege@decoymail.com
                    </ul>
            </p>
            <br />

        </div>
    </div>
</asp:Panel>

</body>

    <%Response.WriteFile("footer.html") %>
</html>