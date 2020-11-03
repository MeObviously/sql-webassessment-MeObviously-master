<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SQL_WebAssessment.index" %>

  <%Response.WriteFile("header_nav.html") %>

<!-- Main content div starts below -->
    <div class="container">
	    <div class="main">

	        <h2>Enter an Item</h2>
            
            <form id="form1" runat="server">
                <asp:Panel ID="pnlLostPropIndex" runat="server" BackColor="#707793">

                <!-- Item -->
                <p><strong>Item<sup>*</sup>:</strong><br />
                <asp:TextBox ID="txtItem" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- Brand -->
                <p><strong>Brand<sup>*</sup>:</strong><br />
                <asp:TextBox ID="txtBrand" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- Size -->
                <p><strong>Size<sup>*</sup>:</strong><br />
                <asp:TextBox ID="txtSize" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- Colour -->
                <p><strong>Colour(s)<sup>*</sup>:</strong><br />
                <asp:TextBox ID="txtColour" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- Named? T/F -->
                <p><strong>Named?<sup>*</sup>:</strong><br />
                <asp:TextBox ID="txtNamedTorF" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- If "Yes", Name? -->
                <p><strong>If &quot;Yes&quot;, Name?<sup>*</sup>:</strong><br />
                <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="144px"></asp:TextBox></p>
                <br />
                <br />

                <!-- Submit -->
                <p><asp:Button ID="btnSubmit" runat="server" Height="25px" Text="Submit" Width="100px" /></p>
                <br />

                </asp:Panel>
            </form>

             <!-- End booking form -->
	
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