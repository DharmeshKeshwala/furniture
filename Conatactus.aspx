<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/furniture.master" CodeFile="Conatactus.aspx.cs" Inherits="Conatactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Css/contact.css" rel="stylesheet" type="text/css" />
    <style type ="text/css">
      .bg  {
            background-color:Aqua;
        }
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" class="style13"   Runat="Server">
    <div class="bg">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="contact-detail">
          <h1 class="section-title">Contact us</h1>

          <ul class="contact-ul">
            <li><i class="fa fa-location-dot"></i> 91, Ram Nagar, Ram Mandir, Delhi</li>

            <li>
              <i class="fa fa-phone"></i>
              <a href="tel:08510004495"><b>0255000XXXX</b></a>,
              <a href="tel:08510005495"><b>0251600XXXX</b></a>
            </li>

            <li>
              <i class="fa-solid fa-envelope"></i>
              <a href="mailto:pardeepkumar4bjp@gmail.com"><b> demounknown@gmail.com</b></a>
            </li>
          </ul>

          <span>
            <a href="#" class="fb"><i class="fa-brands fa-facebook"></i></a>
            <a href="#" class="insta"><i class="fa-brands fa-instagram"></i></a>
            <a href="#" class="twitter"><i class="fa-brands fa-twitter"></i></a>
          </span>
        </div>
      </div>

      <div class="col-md-6">
        <form>
          <div class="row">
            <div class="col-sm-6">
              <asp:TextBox ID="txtname" runat="server" CssClass ="inptFld" placeholder="Your Name"></asp:TextBox> 
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="col-sm-6">
              <asp:TextBox ID="txtemail" runat="server" CssClass ="inptFld" placeholder="Email Address"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter E-mail" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <div class="col-sm-6">
              <asp:TextBox ID="txtphonenumber" runat="server" CssClass ="inptFld" placeholder="Phone Number"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtphonenumber" ErrorMessage="Enter Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"   ValidationExpression="[0-9]{10}" ControlToValidate="txtphonenumber" ErrorMessage="Invalid mobile format" ForeColor="Red" ></asp:RegularExpressionValidator>
            </div>

            <div class="col-sm-6">
              <asp:TextBox ID="txtsubject" runat="server" CssClass ="inptFld" placeholder="Subject"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtsubject" ErrorMessage="Enter subject" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="col-12">
         <asp:TextBox ID="txtmessage" runat="server"  Columns="2" Rows="5" placeholder="Your Message..." CssClass ="inptFld"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtmessage" ErrorMessage="Enter Your Message" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="col-12">
              <asp:Button ID="btnsubmit" runat="server" class="inptBtn" Text="SUBMIT" />
            </div>
          </div>
        </form>
      </div>
    </div>

    
  </div>
      </div>
</asp:Content>

