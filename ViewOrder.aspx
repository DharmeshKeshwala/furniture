<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 .tbl
    {
        color:black;
        font-size:15px;
        }
        </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
   <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
       <HeaderTemplate>  
                <table class="tbl" border="2" frame="box" align="center" height="50%" width="60%" >  
                    <tr bgcolor="#548596">  
                   
                          
                            <td>  
                             Image
                            </td>  
                            <td>  
                           Product Name
                            </td>  
                            <td>  
                              Customer Name
                            </td>  
                              <td>  
                               Price
                            </td>  
                            <td>  
                           Quantity
                            </td>  
                             <td>  
                           Total
                            </td>  
                           
                           
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr bgcolor="#143d4d">  
                    <td style="width:200px; padding-left:50px; padding-right:50px; background-color:White;"> 
                       <asp:Image ID="Image1" runat="server" style="height:100px; width:200px;" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.image")%>' />   
                       
                    </td>  
                    <td align="center">  
                        <asp:Label ID="lblpname" runat="server" Text= '<%#DataBinder.Eval(Container,"DataItem.pname")%>' ForeColor="White"></asp:Label>
                       
                    </td>  
                    <td align="center"> 
                     <asp:Label ID="lblcname" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.cname")%>' ForeColor="White"></asp:Label>
                       
                     
                    </td>  
                          <td align="center">  
                           
                        <asp:Label ID="lblprice" runat="server"   Text=  '<%#DataBinder.Eval(Container,"DataItem.price")%>' ForeColor="White" ></asp:Label>
                    </td>  
                    <td align="center">  
                     <asp:Label ID="lblquantity" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.quantity")%>' ForeColor="White"></asp:Label>
                   
                    </td>  
                     <td align="center">  
                     <asp:Label ID="lbltotal" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.total")%>' ForeColor="White"></asp:Label>
                   
                    </td>  
                   
                  </tr>  
            </ItemTemplate>  
             
       
        </asp:Repeater>  
    </div>

</asp:Content>

