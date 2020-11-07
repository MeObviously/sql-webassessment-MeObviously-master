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
                          <%--  <asp:ListItem Enabled="False">XXS</asp:ListItem>
                            <asp:ListItem Enabled="False">XS</asp:ListItem>
                            <asp:ListItem Enabled="False">S</asp:ListItem>
                            <asp:ListItem Enabled="False">M</asp:ListItem>
                            <asp:ListItem Enabled="False">L</asp:ListItem>
                            <asp:ListItem Enabled="False">XL</asp:ListItem>
                            <asp:ListItem Enabled="False">XXL</asp:ListItem>
                            <asp:ListItem Enabled="False">XXXL</asp:ListItem>--%>

                            <asp:ListItem>XXS</asp:ListItem>
                            <asp:ListItem>XS</asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>XL</asp:ListItem>
                            <asp:ListItem>XXL</asp:ListItem>
                            <asp:ListItem>XXXL</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="rfvSize" runat="server" InitialValue="--Choose--" ControlToValidate="ddlSize" Display="Dynamic" ErrorMessage="SizeRequired">A size is required.</asp:RequiredFieldValidator>
                    </p>
                <br />
                <br />

                <!-- Named? T/F -->
                    <p>
                        <strong>Named?<sup>*</sup>:</strong><br />
                        <asp:DropDownList ID="ddlNamedTorF" runat="server">
                            <asp:ListItem Value="--Choose--">--Choose--</asp:ListItem>
                            <asp:ListItem Enabled="False">Yes</asp:ListItem>
                            <asp:ListItem Enabled="False">No</asp:ListItem>
                        </asp:DropDownList>
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