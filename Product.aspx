<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/furniture.master" CodeFile="Product.aspx.cs" Inherits="Allfurniture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Css/product.css" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
   .td
   {
       padding:10px;
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
 </style>

 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
     <div style="padding-left:200px;">
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
                    <td class="td">  
                      Product Name:-  <%#DataBinder.Eval(Container,"DataItem.productname")%> 
                    </td> 
                    <tr>
                    <td class="td">  
                      M.R.P.₹ :-  <%#DataBinder.Eval(Container,"DataItem.price")%>
                    </td>
                    </tr>
                    <tr>
                    <td class="td">
                    <%#DataBinder.Eval(Container,"DataItem.description")%> 
                    </td> 
                    </tr> 
                    <tr>
                    <td class="td">
                        <asp:Button ID="Button1" runat="server" Text="Buy" CssClass="submitButton" />
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
                    <td colspan="2">  
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
</asp:Content>
