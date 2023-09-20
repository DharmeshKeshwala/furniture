<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
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
    
    .form-container 
    {
    display : flex;
    gap : 1em;
    flex-direction : column;
    }
    
    .form-container > div 
    {
    display : flex;
    justify-content : space-between;
    }
</style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <form id="form1">
<div style="background-color:Blue; padding-left:250px">
    <asp:TextBox ID="txtcname" runat="server" Visible="false"></asp:TextBox>
     <asp:TextBox ID="txtemail" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="txtpass" runat="server" Visible="false"></asp:TextBox>
    <asp:Repeater ID="RepeatInformation" runat="server" 
             onitemcommand="RepeatInformation_ItemCommand">  
            <HeaderTemplate>  
                <table class="tblcolor">  
                      
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor" style="padding:200px;">  
                    <td rowspan="4">  
                         <asp:Image ID="Image1" runat="server" Style="direction:flex; display : flex; flex-direction : column;align-items : center;gap : 10px;max-width :50%;" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.image")%>'  />   

                    </td>  
                    <td>  
                      Product Name:-  <%#DataBinder.Eval(Container,"DataItem.productname")%>
                    </td>
                    <td class="form-container" style="padding:5px;">
                        <asp:Label ID="lblimage" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.image")%>' Visible="False"></asp:Label><asp:TextBox ID="txtpname"
                            runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.productname")%>' Visible="False"></asp:TextBox>
                    </td>
                    <td style="padding-left:50px;" class="form-container">
                    <asp:Label ID="Label1" runat="server" Text="Enter price" Visible="False"></asp:Label><asp:TextBox ID="txtprice"
                            runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.price")%>' Visible="false"></asp:TextBox>
                    </td>
                    <td  style=" padding-left:0px" class="form-container">
                    <asp:Label ID="lblquantity" runat="server" Text="quontity" style="padding:10px"></asp:Label><asp:DropDownList ID="dwquantity" runat="server" >  
            <asp:ListItem>1</asp:ListItem>  
            <asp:ListItem>2 </asp:ListItem>  
            <asp:ListItem>3</asp:ListItem>  
            <asp:ListItem>4</asp:ListItem>  
            <asp:ListItem>5</asp:ListItem>  
        </asp:DropDownList>
                    </td> 
                    <tr>
                    <td>  
                       M.R.P.₹ :-   <%#DataBinder.Eval(Container,"DataItem.price")%> 
                    </td>
                    <td class="form-container"style="padding:5px;">
                       <asp:Label ID="lbladderess" runat="server" Text="Address" style="padding:10px"></asp:Label><asp:TextBox ID="txtaddress" runat="server"  ></asp:TextBox>   
                    </td> 
                    </tr>
                    <tr>
                    <td>
                     <%#DataBinder.Eval(Container,"DataItem.description")%> 
                                         </td> 
                     <td style="padding-left:50px;"class="form-container">
                   <h2> Cash on Delivery </h2>
                       </td>
                    </tr> 
                    <tr>
                    <td style="padding-top:25px;">
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart"  CommandName="up" CssClass="submitButton"/>
                    </td>
                    </tr>
                    </tr>  
             
            </ItemTemplate> 
            <SeparatorTemplate>
            <tr>  
                    <td>  
                        <br />
                    </td> 
                    </tr>
                    <tr> 
                    <td colspan="3">  
                        <hr />  
                    </td> 
                    </tr> 
                    <tr>
                    <td>  
                        <br /> 
                    </td>  
                </tr>  
            </SeparatorTemplate>
            </asp:Repeater> 
            </div>
           
    </form>
</body>
</html>
</asp:Content>

