<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SQL_WebAssessment.index" %>

  <%Response.WriteFile("header_nav.html") %>

<!-- Main content div starts below -->
    <div class="container">
	    <div class="main">

	        <h2>Enter an Item</h2>
            
            <form id="form1" runat="server">
                <asp:Panel ID="pnlLostPropIndex" runat="server" BackColor="#707793">

                <!-- Item -->
                    <p>
                        <strong>Item<sup>*</sup>:</strong><br />
                        <asp:TextBox ID="txtItem" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvItem" runat="server" ErrorMessage="ItemRequired" ControlToValidate="txtItem" Display="Dynamic">Please enter an item.</asp:RequiredFieldValidator>
                    </p>
                    <br />
                    <br />
                
                <!-- Brand -->
                    <p>
                        <strong>Brand<sup>*</sup>:</strong><br />
                        <asp:TextBox ID="txtBrand" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvBrand" runat="server" ControlToValidate="txtBrand" Display="Dynamic" ErrorMessage="BrandRequired">Please enter a brand.</asp:RequiredFieldValidator>
                    </p>
                    <br />
                    <br />
               
                <!-- Colour -->
                    <p>
                        <strong>Colour(s)<sup>*</sup>:</strong><br />
                        <asp:TextBox ID="txtColour" runat="server" Height="24px" Width="340px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvColour" runat="server" ControlToValidate="txtColour" Display="Dynamic" ErrorMessage="ColourRequired">Please enter a colour(s).</asp:RequiredFieldValidator>
                    </p>
                    <br />
                    <br />
            
                    
                <!-- Size -->
                    <p>
                        <strong>Size<sup>*</sup>:</strong><br />
                        <asp:DropDownList ID="ddlSize" runat="server">
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
                <br />
                <br />

                <!-- Named? T/F -->
                    <p>
                        <strong>Named?<sup>*</sup>:</strong><br />
                        <asp:DropDownList ID="ddlNamed" runat="server">
                            <asp:ListItem Value="--Choose--">--Choose--</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvNamed" runat="server" InitialValue="--Choose--" ControlToValidate="ddlNamed" Display="Dynamic" ErrorMessage="AnswerRequired">Please choose an option.</asp:RequiredFieldValidator>
                    </p>
                <br />
                <br />

                <!-- If "Yes", Name? -->
                    <p>
                        <strong>(Optional) Name? (leave blank if no name)<sup>*</sup>:</strong><br />
                        <asp:TextBox ID="txtName" runat="server" Height="24px" Width="340px"></asp:TextBox>
                    </p>
                <br />
                <br />

                <!-- Submit -->
                    <p>
                        <asp:Button ID="btnSubmit" runat="server" Height="25px" Text="Submit" Width="100px" />
                    </p>
                <br />
                <br />
                </asp:Panel>
            </form>

             <!-- End listings form -->
	
	    </div> <!-- Main content end  -->
	   
    </div> <!-- container (around main div) end-->

     <!-- Footer starts below -->
	
    <%Response.WriteFile("footer.html") %>

    <!-- Footer ends above -->

<!-- Link to JavaScipt plugins, needed for things like the dropdown menu to work.  BOTH files are required. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>