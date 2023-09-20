<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/furniture.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

     <style type="text/css">
        .mainDiv {
    display: flex;
    min-height: 100%;
    align-items: center;
    justify-content: center;
    background-color: #f9f9f9;
    font-family: 'Open Sans', sans-serif;
  }
 .cardStyle {
    width: 500px;
    border-color: white;
    background: #fff;
    padding: 36px 0;
    border-radius: 4px;
    margin: 30px 0;
    box-shadow: 0px 0 2px 0 rgba(0,0,0,0.25);
  }
#signupLogo {
  max-height: 100px;
  margin: auto;
  display: flex;
  flex-direction: column;
}
.formTitle{
  font-weight: 600;
  margin-top: 20px;
  color: #2F2D3B;
  text-align: center;
}
.inputLabel {
  font-size: 12px;
  color: #555;
  margin-bottom: 6px;
  margin-top: 24px;
}
  .inputDiv {
    width: 70%;
    display: flex;
    flex-direction: column;
    margin: auto;
  }
input {
  height: 40px;
  font-size: 16px;
  border-radius: 4px;
  border: none;
  border: solid 1px #ccc;
  padding: 0 11px;
}
input:disabled {
  cursor: not-allowed;
  border: solid 1px #eee;
}
.buttonWrapper {
  margin-top: 40px;
}
  .submitButton {
    width: 70%;
    height: 40px;
    margin: auto;
    display: block;
    color: #fff;
    background-color: #065492;
    border-color: #065492;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.12);
    box-shadow: 0 2px 0 rgba(0, 0, 0, 0.035);
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
  }
.submitButton:disabled,
button[disabled] {
  border: 1px solid #cccccc;
  background-color: #cccccc;
  color: #666666;
}

#loader {
  position: absolute;
  z-index: 1;
  margin: -2px 0 0 10px;
  border: 4px solid #f3f3f3;
  border-radius: 50%;
  border-top: 4px solid #666666;
  width: 14px;
  height: 14px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
    </style>
     <link href="Css/userlogin.css" rel="stylesheet" type="text/css" />
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="mainDiv" style="padding-left:600px;">
  <div class="cardStyle">
    <form action="" method="post" name="signupForm" id="signupForm">
      
    
      
      <h2 class="formTitle">
        Change Password of your account
      </h2>
      <div class="inputDiv" style="padding-top:40px;">       <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>

    <div class="inputDiv">
       <asp:Label ID="lblusername" runat="server" Text="Username" CssClass="inputLabel"></asp:Label>
          <asp:TextBox ID="txtuname" runat="server">
          </asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtuname" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
      
    <div class="inputDiv">
              <asp:Label ID="lblemail" runat="server" Text="E-mail" CssClass="inputLabel"></asp:Label>
          <asp:TextBox ID="txtemail" runat="server">
          </asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
    </div>
    <div class="inputDiv">
    <asp:Label ID="lblpassword" runat="server" Text="Password" CssClass="inputLabel"></asp:Label>
            <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
      
    </div>
    
    
    <div class="buttonWrapper">
      
      <asp:Button ID="btnlogin" runat="server"  CssClass="submitButton pure-button pure-button-primary"  Text="Login" 
            onclick="btnlogin_Click1"  />
       
        <p class="inputDiv" style="padding-top:20px;">Don't have an account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registrationform.aspx">Register Now !!</asp:HyperLink></p>
    </div>
      
  </form>
  </div>
</div> 
</asp:Content>

