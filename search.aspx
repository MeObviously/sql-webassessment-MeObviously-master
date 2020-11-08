<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="search.aspx.vb" Inherits="SQL_WebAssessment.search" %>

<%Response.WriteFile("header_nav.html") %>

<div class="container">
    <div class="main">
        <h1>Search</h1>
        <p>
            Please choose an option below.
        </p>
        <!-- Form starts -->
        <form id="frmMain" runat="server">
            <asp:Panel ID="pnlSearch" runat="server" BackColor="#E0E8F9">
                <!-- Item -->
                <div class="one">
                    <p>
                        &nbsp;Item<sup>*</sup>:&emsp;&emsp;
                        <asp:TextBox ID="txtItem" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        <asp:Button ID="btnItemSearch" ValidationGroup="Val1" OnClick="btnItemSearch_Click" runat="server" Text="Search Item" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ValidationGroup="Val1" ID="rfvItem" runat="server" ErrorMessage="ItemRequired" ControlToValidate="txtItem" Display="Dynamic">Please enter an item.</asp:RequiredFieldValidator>
                    </p>
                </div>
            </asp:Panel>
        </form>
    </div>
</div>
</body>

    <%Response.WriteFile("footer.html") %>
</html>