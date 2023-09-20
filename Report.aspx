<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

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
    

         <asp:Repeater ID="Repeater1" runat="server" 
             onitemcommand="Repeater1_ItemCommand">
       <HeaderTemplate>  
                <table class="tbl" border="2" frame="box" align="center"  height="50%" width="60%" >  
                    <tr bgcolor="#548596">  
                          
                            <td>  
                              ID
                            </td>  
                            <td>Image</td>
                            <td>  
                           Product Name
                            </td>  
                            <td>  
                            Price
                            </td>  
                              <td>  
                              Description
                            </td>  
                                
                           
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr bgcolor="#143d4d">  
                    <td> 
                      <asp:Label runat="server" ID="lblid" textcolor="white"  Text='<%#DataBinder.Eval(Container,"DataItem.ID")%>' ForeColor="White"></asp:Label>
                    </td>
                    <td bgcolor="white" align="center">
                       <asp:Image runat="server" ID="imggg" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.image")%>' Width="300px" Height="150px"/>
                       
                    </td>  
                    <td>  
                        <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.Productname")%>' ForeColor="White"></asp:Label>
                        
                       
                    </td>  
                    <td>  
                        <asp:Label ID="lblpqnt" runat="server"   Text='<%#DataBinder.Eval(Container,"DataItem.price")%>' ForeColor="White"></asp:Label>
                     
                    </td>  
                          <td>  
                           <asp:Label ID="lblprice" runat="server" Text='<%#DataBinder.Eval(Container,"DataItem.description")%>' ForeColor="White"></asp:Label>

                    </td>  
                    <td>  
                    
        <asp:Button ID="btndelete" runat="server" Text="delete" CommandName="delete"/>
                    
                    </td> 
                      
                </tr>  
            </ItemTemplate>
            
             
       
        </asp:Repeater>  
    
       
         
</div>
</asp:Content>

