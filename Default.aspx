<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
 
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
  <div class="mainDiv">
  <div class="cardStyle">
    <form id="form1">
  <h1 class="formTitle">Add product</h1>
    <div class="inputDiv">
        <asp:Label ID="Label1" runat="server" Text="Product Name" CssClass="inputLabel"></asp:Label>
        <asp:TextBox ID="txtproductname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtproductname"
            runat="server" ErrorMessage="Enter Product name" ForeColor="Red"></asp:RequiredFieldValidator> 
    </div>
    <div class="inputDiv">
        <asp:Label ID="Label2" runat="server" Text="Price" CssClass="inputLabel"></asp:Label>
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtprice"
            runat="server" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator> 
    </div>
    <div class="inputDiv">
        <asp:Label ID="Label3" runat="server" Text="Description" CssClass="inputLabel"></asp:Label>
        <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtdescription"
            runat="server" ErrorMessage="Enter discription" ForeColor="Red"></asp:RequiredFieldValidator> 
    </div>
    <div class="inputDiv">
        <asp:Label ID="Label4" runat="server" Text="image" CssClass="inputLabel"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server"/>   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FileUpload1"
            runat="server" ErrorMessage="Please Select a image" ForeColor="Red"></asp:RequiredFieldValidator> 
    </div>
    <div class="buttonWrapper">
        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="submitButton pure-button pure-button-primary" 
            onclick="Button1_Click1" /><br />
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    </div>

    </form>
    </div>
    </div>
</asp:Content>

