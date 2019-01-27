<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta http-equiv="imagetoolbar" content="no" />
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.defaultvalue.js"></script>
    <script type="text/javascript" src="scripts/jquery-ui-1.8.13.custom.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.scrollTo-min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#fullname, #validemail, #message").defaultvalue("Full Name", "Email Address", "Message");
            $('#shout a').click(function () {
                var to = $(this).attr('href');
                $.scrollTo(to, 1200);
                return false;
            });
            $('a.topOfPage').click(function () {
                $.scrollTo(0, 1200);
                return false;
            });
            $("#tabcontainer").tabs({
                event: "click"
            });
        });
    </script>
    <!-- Homepage Only Scripts -->
    <script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
    <script type="text/javascript" src="scripts/piecemaker/swfobject/swfobject.js"></script>
    <script type="text/javascript">
        var flashvars = {};
        flashvars.cssSource = "scripts/piecemaker/piecemaker.css";
        flashvars.xmlSource = "scripts/piecemaker/piecemaker.xml";
        var params = {};
        params.play = "false";
        params.menu = "false";
        params.scale = "showall";
        params.wmode = "transparent";
        params.allowfullscreen = "true";
        params.allowscriptaccess = "sameDomain";
        params.allownetworking = "all";
        swfobject.embedSWF('scripts/piecemaker/piecemaker.swf', 'piecemaker', '960', '430', '10', null, flashvars, params, null);
    </script>
</head>
<body id="top">
    <form id="form1" runat="server">
    <div class="wrapper col1">
    </div>
    <!-- ####################################################################################################### -->
    <div class="wrapper col2">
        <div id="header" class="clear">
            <div class="fl_left">
                <h1>
                    <a href="index.aspx">Sentiment Analysis For Movies Review</a></h1>
                <p>
                    Web Blog Mining</p>
            </div>
            <div id="topnav">
                <ul>
                    <li class="last"><a href="Gallery.aspx">Logout</a><span></span></li>
                    <li><a href="Gallery.aspx">Gallery</a><span></span></li>
                    <li><a href="Review.aspx">Review</a><span></span> </li>
                     <li><a href="Information.aspx">Information</a><span></span></li>
                   <%-- <li><a href="style-demo.html">Style Demo</a><span>Test Text Here</span></li>--%>
                    <li class="active"><a href="index.aspx">Homepage</a><span></span></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="wrapper col3">
        <div id="featured_slide">
            <!-- ####################################################################################################### -->
            <div id="piecemaker">
                <img src="images/demo/featured-project/1.jpg" alt="" />
            </div>
            <!-- ####################################################################################################### -->
        </div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="wrapper col4">
        <div id="container" class="clear">
            <!-- ####################################################################################################### -->
            <div id="shout" class="clear">
                <div class="fl_left">
                    <h2>
                        Movies Reviews</h2>
                    <p>
                       </p>
                </div>
                <p class="fl_right">
                    <a href="Review.aspx">Check Here</a></p>
            </div>
            <!-- ####################################################################################################### -->
            <!-- ####################################################################################################### -->
        </div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="wrapper">
        <div id="footer" class="clear">
            <!-- ####################################################################################################### -->
        </div>
        <div id="backtotop">
            <a href="#top" class="topOfPage">To The Top</a></div>
    </div>
    <!-- ####################################################################################################### -->
    <div class="wrapper">
        <div id="copyright" class="clear">
            <p class="fl_left">
                Copyright &copy; 2011 - All Rights Reserved - <a href="#">Domain Name</a></p>
            <p class="fl_right">
                Template by <a href="#" title="Free Website Templates">OS Templates</a></p>
        </div>
    </div>
    </form>
</body>
</html>
