<%@ Page Title="" Language="C#" MasterPageFile="~/furniture.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <link href="Css/adminlogin.css" rel="stylesheet" type="text/css" />

   <style type="text/css">
     .bg  {
           padding-top:50px;
       }
   </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login">
  <h1>Login</h1> 
  
    <asp:TextBox ID="txtuser" runat="server" placeholder="username" CssClass ="username"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtuser" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtpass" runat="server" placeholder="password" CssClass ="password" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:LinkButton ID="LinkButton1" runat="server" class="forgot" 
            onclick="LinkButton1_Click">forgot password?</asp:LinkButton>
            <asp:Label ID="Label1"
                runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />
</div>
<div class="shadow"></div>
 
  
</asp:Content>

