<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AlkemyLabs.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
    <form id="form1" runat="server" class="form-signin"> 
        <div class="center" >
            <h2 class="form-signin-heading">Please login</h2>
            <asp:Label ID="lblUser" runat="server" Text="User: "></asp:Label>
            <asp:TextBox class="txtUser" ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
            <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"/> Remember me
      </label><br />
            <asp:Button  class="btn btn-lg btn-primary btn-block"  ID="btnEnter" runat="server" Text="Enter" />
            <asp:Button ID="btSignIn" runat="server" Text="Sign in" OnClick="btSignIn_Click" />

        </div>
    </form>
         </div>
</body>
</html>
