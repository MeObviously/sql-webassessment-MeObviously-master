<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="search.aspx.vb" Inherits="SQL_WebAssessment.search" %>

<%Response.WriteFile("header_nav.html") %>



<div class="container">
    <div class="main">

        <asp:Panel ID="pnlSearch" runat="server">
                        
            <h1>Search</h1>
            <p>
                Please choose an option below.
            </p>
            <!-- Form starts -->
            <form id="frmMain" runat="server">

                <!-- Item Search-->
                <div class="one">
                    <p>
                        &ensp;Item<sup>*</sup>:&emsp;&emsp;
                            <asp:TextBox ID="txtItem" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:Button ID="btnItemSearch" ValidationGroup="Val1" OnClick="btnItemSearch_Click" runat="server" Text="Search Item" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ValidationGroup="Val1" ID="rfvItem" runat="server" ErrorMessage="ItemRequired" ControlToValidate="txtItem" Display="Dynamic">Please enter an item.</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revItem" runat="server" ControlToValidate="txtItem" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$" ValidationGroup="Val1">Item cannot contain numbers.</asp:RegularExpressionValidator>
                    </p>
                </div>
                <!-- End Item Search -->

                <br />

                <!-- Brand Search -->
                <div class="two">
                    <p>
                        &nbsp;Brand<sup>*</sup>:&emsp;&emsp;
                        <asp:TextBox ID="txtBrand" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnBrandSearch" ValidationGroup="Val2" OnClick="btnBrandSearch_Click" runat="server" Text="Search Brand" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ValidationGroup="Val2" ID="rfvBrand" runat="server" ErrorMessage="BrandRequired" ControlToValidate="txtBrand" Display="Dynamic">Please enter a brand.</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revBrand" runat="server" ControlToValidate="txtBrand" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$" ValidationGroup="Val2">Brand cannot contain numbers.</asp:RegularExpressionValidator>
                    </p>
                </div>
                <!-- End Brand Search -->

                <br />

                <!-- Colour Search -->
                <div class="one">
                    <p>
                        &nbsp;Colour<sup>*</sup>:&emsp;&emsp;
                        <asp:TextBox ID="txtColour" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnColourSearch" ValidationGroup="Val3" OnClick="btnColourSearch_Click" runat="server" Text="Search Colour" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ValidationGroup="Val3" ID="rfvColour" runat="server" ErrorMessage="ColourRequired" ControlToValidate="txtColour" Display="Dynamic">Please enter a colour.</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revColour" runat="server" ControlToValidate="txtColour" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$" ValidationGroup="Val3">Colour cannot contain numbers.</asp:RegularExpressionValidator>
                    </p>
                </div>
                <!-- End Colour Search -->

                <br />

                <!-- Size Search -->
                <div class="two">
                    <p>
                        &ensp;Size<sup>*</sup>:&emsp;&emsp;
                      <asp:DropDownList ID="ddlSize" runat="server" Width="340px">
                          <asp:ListItem Value="--Choose--">--Choose--</asp:ListItem>
                          <asp:ListItem>(Shirt Sizes)</asp:ListItem>
                          <asp:ListItem>XXS</asp:ListItem>
                          <asp:ListItem>XS</asp:ListItem>
                          <asp:ListItem>S</asp:ListItem>
                          <asp:ListItem>M</asp:ListItem>
                          <asp:ListItem>L</asp:ListItem>
                          <asp:ListItem>XL</asp:ListItem>
                          <asp:ListItem>XXL</asp:ListItem>
                          <asp:ListItem>XXXL</asp:ListItem>
                          <asp:ListItem>(Foot Sizes)</asp:ListItem>
                          <asp:ListItem>M6</asp:ListItem>
                          <asp:ListItem>M6.5</asp:ListItem>
                          <asp:ListItem>M7</asp:ListItem>
                          <asp:ListItem>M7.5</asp:ListItem>
                          <asp:ListItem>M8</asp:ListItem>
                          <asp:ListItem>M8.5</asp:ListItem>
                          <asp:ListItem>M9</asp:ListItem>
                          <asp:ListItem>M9.5</asp:ListItem>
                          <asp:ListItem>M10</asp:ListItem>
                          <asp:ListItem>M10.5</asp:ListItem>
                          <asp:ListItem>M11</asp:ListItem>
                          <asp:ListItem>M11.5</asp:ListItem>
                          <asp:ListItem>M12</asp:ListItem>
                          <asp:ListItem>M12.5</asp:ListItem>
                          <asp:ListItem>M13</asp:ListItem>
                          <asp:ListItem>M13.5</asp:ListItem>
                          <asp:ListItem>M14</asp:ListItem>
                      </asp:DropDownList>
                        &nbsp;&nbsp;
                             <asp:Button ID="btnSizeSearch" ValidationGroup="Val4" OnClick="btnSizeSearch_Click" runat="server" Text="Search Size" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ID="rfvSize" ValidationGroup="Val4" runat="server" InitialValue="--Choose--" ControlToValidate="ddlSize" Display="Dynamic" ErrorMessage="SizeRequired">A size is required.</asp:RequiredFieldValidator>
                    </p>
                </div>
                <!-- End Size Search -->

                <br />

                <!-- Named Search -->
                <div class="one">
                    <p>
                        &ensp;Named<sup>*</sup>:&emsp;&emsp;
                            <asp:DropDownList ID="ddlNamed" runat="server" Width="340px">
                                <asp:ListItem Value="--Choose--">--Choose--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;
                             <asp:Button ID="btnNamedSearch" ValidationGroup="Val5" OnClick="btnNamedSearch_Click" runat="server" Text="Search Named" Height="25px" Width="125px" />
                        <asp:RequiredFieldValidator ID="rfvNamed" ValidationGroup="Val5" runat="server" InitialValue="--Choose--" ControlToValidate="ddlNamed" Display="Dynamic" ErrorMessage="NamedRequired">Please choose an option.</asp:RequiredFieldValidator>
                    </p>
                </div>
                <!-- End Named Search -->

                <br />

                <!-- Name Search-->
                <div class="two">
                    <p>
                        &ensp;Name<sup>*</sup>:&emsp;&emsp;
                        <asp:TextBox ID="txtName" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnNameSearch" runat="server" Height="25px" OnClick="btnNameSearch_Click" Text="Search Name" ValidationGroup="Val6" Width="125px" />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="NameRequired" ValidationGroup="Val6">Please enter a name.</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Z a-z]*$" ValidationGroup="Val6">Name cannot contain numbers.</asp:RegularExpressionValidator>
                    </p>
                </div>
                <!-- End Name Search -->
                <br />

            </form>
        </asp:Panel>
    </div>
    <!-- end div main -->
</div>
<!-- end div container -->
</body>

    <%Response.WriteFile("footer.html") %>
</html>