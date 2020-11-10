<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SQL_WebAssessment.index" %>

  <%Response.WriteFile("header_nav.html") %>

<!-- Main content div starts below -->
<div class="container">
    <div class="main">

        <h2>Enter an Item</h2>
        <!-- Instructions -->
        <p>
            Fields marked with an <sup>*</sup> are required.
        </p>

        <asp:PlaceHolder ID="plhError" runat="server"></asp:PlaceHolder>


        <!-- Listing form start -->
        <form id="form1" runat="server">
            <asp:Panel ID="pnlLostPropIndex" runat="server">

                <br />

                <!-- Start Item -->
                <p>
                    &emsp;<strong>Item<sup>*</sup>:</strong><br />
                    &emsp;<asp:TextBox ID="txtItem" runat="server" Height="24px" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvItem" runat="server" ErrorMessage="ItemRequired" ControlToValidate="txtItem" Display="Dynamic">Please enter an item.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revItem" runat="server" ControlToValidate="txtItem" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$">Item cannot contain numbers.</asp:RegularExpressionValidator>
                </p>
                <!-- End Item -->

                <br />


                <!-- Start Brand -->
                <p>
                    &emsp;<strong>Brand<sup>*</sup>:</strong><br />
                    &emsp;<asp:TextBox ID="txtBrand" runat="server" Height="24px" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvBrand" runat="server" ControlToValidate="txtBrand" Display="Dynamic" ErrorMessage="BrandRequired">Please enter a brand.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revBrand" runat="server" ControlToValidate="txtBrand" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$">Brand cannot contain numbers.</asp:RegularExpressionValidator>
                </p>
                <!-- End Brand -->

                <br />

                <!-- Start Colour -->
                <p>
                    &emsp;<strong>Colour(s)<sup>*</sup>:</strong><br />
                    &emsp;<asp:TextBox ID="txtColour" runat="server" Height="24px" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvColour" runat="server" ControlToValidate="txtColour" Display="Dynamic" ErrorMessage="ColourRequired">Please enter a colour.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revColour" runat="server" ControlToValidate="txtColour" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Za-z]*$">Colour cannot contain numbers.</asp:RegularExpressionValidator>
                </p>
                <!-- End Colour -->

                <br />

                <!-- Start Size -->
                <p>
                    &emsp;<strong>Size<sup>*</sup>:</strong><br />
                    &emsp;<asp:DropDownList ID="ddlSize" runat="server">
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
                    <asp:RequiredFieldValidator ID="rfvSize" runat="server" InitialValue="--Choose--" ControlToValidate="ddlSize" Display="Dynamic" ErrorMessage="SizeRequired">A size is required.</asp:RequiredFieldValidator>
                </p>
                <!-- End Size -->

                <br />

                <!-- Start DateAdded -->
                <p>
                    &emsp;<strong>Date Found (dd/mm/yyyy)<sup>*</sup>:</strong><br />
                    &emsp;<asp:TextBox ID="txtDateFound" runat="server" height="24px" width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDateFound" runat="server" ControlToValidate="txtDateFound" Display="Dynamic" ErrorMessage="DateRequired">A date is required.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBrand" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[- /.](0?[1-9]|1[012])[- /.](19|20)[0-9][0-9]$">Please enter a valid date.</asp:RegularExpressionValidator>
                </p>
                <!-- End DateAdded -->

                <br />

                <!-- Start Named? T/F -->
                <p>
                    &emsp;<strong>Named?<sup>*</sup>:</strong><br />
                    &emsp;<asp:DropDownList ID="ddlNamed" runat="server">
                        <asp:ListItem Value="--Choose--">--Choose--</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvNamed" runat="server" InitialValue="--Choose--" ControlToValidate="ddlNamed" Display="Dynamic" ErrorMessage="AnswerRequired">Please choose an option.</asp:RequiredFieldValidator>
                </p>
                <br />

                <!-- Starts Name -->
                <p>
                    &emsp;<strong>(Optional) Name? (leave blank if no name):</strong><br />
                    &emsp;<asp:TextBox ID="txtName" runat="server" Height="24px" Width="340px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[A-Z a-z]*$">Name cannot contain numbers.</asp:RegularExpressionValidator>
                </p>
                <!-- End Name -->

                <br />

                <!-- Start Phone -->
                <p>
                    &emsp;<strong>(Optional)Phone? (leave blank if no phone number):</strong><br />
                    &emsp;<asp:TextBox ID="txtPhone" runat="server" height="24px" width="340px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$">A valid phone number is required.</asp:RegularExpressionValidator>
                </p>
                <!-- End Phone -->

                <br />

                <!-- Submit -->
                <p>
                    &emsp;<asp:Button ID="btnSubmit" runat="server" Height="25px" Text="Submit" Width="100px" />
                </p>
                <!-- End Submit -->

                <br />
            </asp:Panel>
        </form>

        <!-- End listings form -->

    </div>
    <!-- Main content end  -->

</div>
<!-- container (around main div) end-->

<!-- Footer starts below -->
	
    <%Response.WriteFile("footer.html") %>

    <!-- Footer ends above -->

<!-- Link to JavaScipt plugins, needed for things like the dropdown menu to work.  BOTH files are required. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>