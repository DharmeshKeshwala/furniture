<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Mycart.aspx.cs" Inherits="Mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 .tbl
    {
        color:black;
        font-size:15px;
        }
          .deletebtn
        {
            Background-color:Red;
            }
            .uptbtn
            {
                Background-color:blue;
                
                }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <asp:Label ID="lblcname" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblpass" runat="server" Visible="false"></asp:Label>
<asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
       <HeaderTemplate>  
                <table class="tbl" border="2" frame="box" align="center" height="50%" width="60%">  
                    <tr bgcolor="#548596">  
                          <td>ID</td>
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
                            <td></td>
                           
                           
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr bgcolor="#143d4d">  
                 <td align="center" >
                <asp:Label ID="lblid" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.ID") %>' ForeColor="White" Visible="false"></asp:Label>
                </td>
               
                    <td bgcolor="white" align="center">
                     
                       <asp:Image ID="Image1" runat="server" style="height:75px; width:150px;" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.image")%>'  />   
                       
                    </td>  
                    <td align="center">  
                        <asp:Label ID="lblpname" runat="server" Text= '<%#DataBinder.Eval(Container,"DataItem.pname")%>' ForeColor="White"></asp:Label>
                       
                    </td>  
                    <td align="center">  <asp:Label ID="lblcname" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.cname")%>' ForeColor="White"></asp:Label>
                       
                     
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
                    <td style="padding:10px;" align="center">  
                      <asp:Button ID="btndelete" runat="server" Text="delete"  CommandName="delete" BackColor="#FF5050" Width="80" />
                 
                    </td>  
                  </tr>  
            </ItemTemplate>  
             
                  <FooterTemplate>
            <tr align="center">
             <td colspan="8" style="text-align: center">
            <asp:Button ID="btnshopping" runat="server" CssClass="btn" 
                Text="Continew Shopping" PostBackUrl="~/View.aspx" 
                />
            <asp:Button ID="btnlogout" runat="server" CssClass="btn" Text="Check Out" 
                PostBackUrl="~/Home.aspx" />
        </td></tr>
            </FooterTemplate>
             
       
        </asp:Repeater>  
    </div>
</asp:Content>

