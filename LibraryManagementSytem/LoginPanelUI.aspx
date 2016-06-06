<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanelUI.aspx.cs" Inherits="LibraryManagementSytem.LoginPanelUI" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 309px;
        }
        .auto-style2 {
            width: 116px;
        }
        .auto-style3 {
            width: 204px;
        }
        .auto-style9 {
            width: 312px;
        }
        .auto-style10 {
            width: 312px;
            height: 21px;
        }
        .auto-style11 {
            width: 116px;
            height: 21px;
        }
        .auto-style12 {
            width: 204px;
            height: 21px;
        }
        .auto-style13 {
            height: 21px;
        }
        .auto-style14 {
            width: 312px;
            height: 77px;
        }
        .auto-style15 {
            width: 116px;
            height: 77px;
        }
        .auto-style16 {
            width: 204px;
            height: 77px;
        }
        .auto-style17 {
            height: 77px;
        }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
   

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

</head>
<body style="width: 980px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server"><h2>LOGIN</h2></asp:Label>
                </td>
                <td>Dont have a account?plz
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup1.aspx">SignUp</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="msgLabel" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="col-sm-2 control-label">Id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="idTextBox" runat="server" Width="173px" CssClass="form-control" placeholder="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="col-sm-2 control-label">
                    <asp:Label ID="Label3" runat="server">Password</asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="passwordTextBox" runat="server" Width="172px" CssClass="form-control" placeholder="Password"></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button CssClass="btn btn-success" ID="loginButton" runat="server" Height="35px" OnClick="loginButton_Click" Text="Login" Width="114px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>


    <link rel="stylesheet" href="css/normalize.css">


    <style>
        /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
        @import url(http://fonts.googleapis.com/css?family=Open+Sans);

        .btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            padding: 4px 10px 4px;
            margin-bottom: 0;
            font-size: 13px;
            line-height: 18px;
            color: #333333;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            background-color: #f5f5f5;
            background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
            background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: linear-gradient(top, #ffffff, #e6e6e6);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
            border-color: #e6e6e6 #e6e6e6 #e6e6e6;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            border: 1px solid #e6e6e6;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            *margin-left: .3em;
        }

            .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
                background-color: #e6e6e6;
            }

        .btn-large {
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .btn:hover {
            color: #333333;
            text-decoration: none;
            background-color: #e6e6e6;
            background-position: 0 -15px;
            -webkit-transition: background-position 0.1s linear;
            -moz-transition: background-position 0.1s linear;
            -ms-transition: background-position 0.1s linear;
            -o-transition: background-position 0.1s linear;
            transition: background-position 0.1s linear;
        }

        .btn-primary, .btn-primary:hover {
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            color: #ffffff;
        }

            .btn-primary.active {
                color: rgba(255, 255, 255, 0.75);
            }

        .btn-primary {
            background-color: #4a77d4;
            background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4));
            background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -o-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: linear-gradient(top, #6eb6de, #4a77d4);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);
            border: 1px solid #3762bc;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.4);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5);
        }

            .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
                filter: none;
                background-color: #4a77d4;
            }

        .btn-block {
            width: 100%;
            display: block;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            -o-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        body {
            width: 100%;
            height: 100%;
            font-family: 'Open Sans', sans-serif;
            background: #092756;
            background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top, rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg, #670d10 0%, #092756 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg, #670d10 0%,#092756 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
        }

        .login {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -150px 0 0 -150px;
            width: 300px;
            height: 300px;
        }

            .login h1 {
                color: #fff;
                text-shadow: 0 0 10px rgba(0,0,0,0.3);
                letter-spacing: 1px;
                text-align: center;
            }

        input {
            width: 100%;
            margin-bottom: 10px;
            background: rgba(0,0,0,0.3);
            border: none;
            outline: none;
            padding: 10px;
            font-size: 13px;
            color: #fff;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
            border: 1px solid rgba(0,0,0,0.3);
            border-radius: 4px;
            box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
            -webkit-transition: box-shadow .5s ease;
            -moz-transition: box-shadow .5s ease;
            -o-transition: box-shadow .5s ease;
            -ms-transition: box-shadow .5s ease;
            transition: box-shadow .5s ease;
        }

            input:focus {
                box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2);
            }
    </style>


    <script src="js/prefixfree.min.js"></script>



</head>

<body>

    <div class="login">
        <h1>Login</h1>
        <h5>
            <asp:Label ID="msgLabel" runat="server" ForeColor="White"></asp:Label></h5>
        <form method="post" runat="server">
            <asp:TextBox ID="idTextBox" name="u" runat="server" placeholder="Username" required="required"></asp:TextBox>
            <asp:TextBox ID="passwordTextBox" name="p" placeholder="Password" required="required" runat="server"></asp:TextBox>
            <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" CssClass="btn btn-primary btn-block btn-large" Text="Let me in" />
            <%--<input type="text" name="u" placeholder="Username" required="required" />
        <input type="password" name="p" placeholder="Password" required="required" />
        
        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>--%>
        </form>
    </div>



    <script src="js/index.js"></script>


</body>
</html>
