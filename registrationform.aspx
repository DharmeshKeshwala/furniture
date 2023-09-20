<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/furniture.master" CodeFile="registrationform.aspx.cs" Inherits="registrationform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Css/registration.css" rel="stylesheet" type="text/css" />
    <style type="text/css"> 
        .pad
        {
            padding-top:50%;
            }
       .cad
       {
           padding:100px,100px,100px,100px;
           }     
            
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="login-box"align="center">
  <div  align="center">
    <h1>Sign up</h1>
    
    <asp:TextBox ID="txtusername" runat="server" placeholder="Username" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtusername" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtemail" runat="server" placeholder="E-mail"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
     <asp:TextBox ID="txtmobile" runat="server" placeholder="Mobile-No"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtmobile" ErrorMessage="Enter Mobile-No" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtmobile" ErrorMessage="Enter valid mobile"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
   <asp:TextBox ID="txtpassword" runat="server" placeholder="Password"  TextMode="Password"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ControlToValidate="txtpassword" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtconformpass" runat="server" placeholder="Retype password"  TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpassword" ControlToValidate="txtconformpass" 
                ErrorMessage="passwod not same" ForeColor="Red"></asp:CompareValidator>
    
   <asp:Button ID="btnsubmit" runat="server" Text="Sign up" 
          onclick="btnsubmit_Click" />
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

  </div>
  
 </div></asp:Content>