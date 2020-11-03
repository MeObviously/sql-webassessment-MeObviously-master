<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="SQL_WebAssessment.index" %>

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="keywords" content="" />	<!-- add keywords -->
    <meta name="description" content="" />	<!-- add description content -->
    <meta name="Lucas Abbott" content="" />		<!-- Add your name to 'author' -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>St Callahans College Lost Property</title>

    <!-- Links for css, bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />	<!-- Bootstrap -->
    <link href="css/st_callahan_custom.css" rel="stylesheet" type="text/css" />	<!-- St Callahan Lost Property -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <!-- Navigation starts below -->
    <div class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	
		    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
		    </button>
				
		    <!-- Logo goes here -->
			
		    <h1>St Callahan's College Lost Property</h1>

	    </div> <!-- End of navbar-header -->
	
	    <div class="container">  <!-- Top links start here -->
		    <div class="navbar-collapse collapse">
			    <ul class="nav navbar-nav navbar-right">
				    <li class="active"><a href="index.aspx">Listings</a></li>
				    <li><a href="#">Search</a></li>
				    <li><a href="#">Contact</a></li>	
			    </ul>
		    </div> <!-- End of navbar collapse -->
	    </div> <!-- End of navigation container class -->
    </div>
    <!-- Navigation ends above -->

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
	 <footer class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">
            <div class="navbar-text pull-right">
                &copy; 2020 Lucas Abbott
            </div>
        </div>
    </footer>
    <!-- Footer ends above -->

<!-- Link to JavaScipt plugins, needed for things like the dropdown menu to work.  BOTH files are required. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>