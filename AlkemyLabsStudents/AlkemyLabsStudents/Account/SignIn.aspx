<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="AlkemyLabs.Account.SignIn" %>

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
         
            <h2 class="form-signin-heading">Please Sign In</h2>
            <asp:Label ID="lblNewUser" runat="server" Text="Create New User"></asp:Label><br/>
            <asp:TextBox ID="txtNewUser" runat="server" class="form-control"></asp:TextBox><br/>
            <asp:Label ID="lblNewPassword" runat="server" Text="Create New Password" ></asp:Label><br/>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblEmail" runat="server" Text="Enter a valid Email"></asp:Label><br/>
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblName" runat="server" Text="Enter your First Name"></asp:Label><br/>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblLastName" runat="server" Text="Enter your Last Name"></asp:Label><br/>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblID" runat="server" Text="Enter your ID"></asp:Label><br/>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox><br/>
            <asp:Label ID="lblFile" runat="server" Text="Enter your File Number"></asp:Label><br/>
            <asp:TextBox ID="txtFile" runat="server"></asp:TextBox><br/>
            <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"/>
                Remember me
            </label>
            <asp:Button ID="btnEnter" runat="server" Text="Enter"  class="btn btn-lg btn-primary btn-block" OnClick="btnEnter_Click"/>
            
                
        </form>
    </div>
</body>
</html>
