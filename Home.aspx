<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Css/Home.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .link
        {
            margin:20px,20px,20px,20px;
            }
          .image
          {
              padding-left:30px;
          }
          .bimg
          {
              height:50px;
              width:100px;
              }
              
              /* font imports */
@import url('https://fonts.googleapis.com/css?family=Tangerine');
 @import url('https://fonts.googleapis.com/css?family=Dosis');
 @import url('https://fonts.googleapis.com/css?family=Comfortaa');

/* sass variables */
$c-text: #272727;
$c-text2: #f2f5ea;
$c-text3: #5a595b;
$c-text4: #f0eff4;
$c-accent: #f3d201;
$c-accent2: #d17a22;
$c-bg: #f2f5ea;
$c-bg2: #363537;
$c-bg3: #050505;
$font-selection-h2: 'Tangerine', cursive;
$font: 'Dosis', sans-serif;
$font-h1: 'Comfortaa', sans-serif;

/**********/
/* global */
/**********/
body {
  height: 100vh;
  margin: 0;
  padding: 0;
  line-height: 1.8;
  box-sizing: border-box;
  font-family: $font;
  font-size: 1.1rem;
  color: $c-text;
  background-color: $c-bg;
}
a {
  text-decoration: none;
  color: $c-accent2;
}
a:hover {
  text-decoration: underline;
}
h1 {
  font-size: 3rem;
  margin: 0;
  padding: 1rem 0;
}
h2 {
  font-size: 2rem;  
}
h1,
h2,
h3,
.links > li > a {
  text-transform: uppercase;
}
p {
  line-height: 1.8;
  margin: 0;
  padding: 1rem 0;
}
ul {
  list-style: none;
}
.container {
  max-width: 1200px;
  margin: auto;
  padding: 0 0 0 1rem;
}
.links > li > a {
  display: inline-block;
  padding: 1rem 0;
  letter-spacing: 1px;
  text-decoration: none;
}
/**********/
/* header */
/**********/
header {
  background-color: $c-bg;
  color: $c-text;
}
/*******/
/* nav */
/*******/
nav {
  background-color: $c-bg2;
}
nav .furniture-condensed {
  display: none;
}
nav > ul {
  display: flex;
  flex-wrap: wrap;
}
nav > ul > li {
  display: inline-block;
}
nav > .links > li > a {
  padding: 1rem;
  color: $c-text2;
}
nav > .links > li > a:hover {
  color: $c-accent;
}
/*************/
/* selection */
/*************/
.furniture-img {
  width: 800px;
  max-width: 100%;
  display: block;
  height: auto;
}
.furniture-text {
  color: $c-text3;
  font-size: 0.8rem;
  font-style: italic;
}
/************/
/* services */
/************/
#services .service-icon {
  display: none;
}
/**********/
/* footer */
/**********/
footer {
  background-color: $c-bg2;
}
footer > section {
  color: $c-text2;
}
footer > section > ul {
  letter-spacing: 1px;
  margin: 0;
  padding: 1rem 0;
}
footer > section > ul > h3 {
  text-decoration: underline;
}
footer > section > ul > li > a {
  color: $c-text2;
}
footer > section > ul > li > a:hover {
  color: $c-accent;
}
.abc
{
    padding-left:250px;
  
    }
    </style>
    </head>
<body>
  
    <form id="form1" runat="server">
   <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
<section class="home-section">
  <header>
       
    <div class="container"> 
        <div class="logo">
         
      <h1>Online Furniture Store</h1>
    </div>
    <div class="ham-menu">
      <div>
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
width="25" height="25"
viewBox="0 0 172 172"
style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"></svg>
      </div>
    </div>
   
    <nav class="nav">
      <ul>
        <li><a href="Home.aspx" class="active-link">HOME</a></li>
        <li><a href="Product.aspx">PRODUCT</a></li>
        <li><a href="Login.aspx">LOGIN</a></li>
        
        <li><a href="Aboutus.aspx">ABOUT</a></li>
         <li><a href="Adminlogin.aspx">ADMIN LOGIN</a></li>
      </ul>
   </nav>
  
    </div> <asp:Image ID="Image1" runat="server" ImageUrl="~/images/room look.jpg" CssClass="abc" Height="600px" Width="1200px"></asp:Image>
  </header> 
  </section>
    </form> 
    <table class="tbl" style="padding-bottom:100px; padding-left:50px;">
        <tr>
            <td class="tblhead" align="center">
               <h2>PRODUCT</h2> </td>
        </tr>
        <tr>
            <td>
           &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged"  >
    <ItemStyle CssClass="igrid" />
    <ItemTemplate>
        <table class="tbl" >
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Style="direction:flex; display : flex; flex-direction : column;align-items : center;gap : 10px;max-width :50%;" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.image")%>'  />   
                </td>
            </tr>
            <tr>
                <td>
                                Name :
                                <asp:Label ID="Label1" runat="server" Text=' <%#DataBinder.Eval(Container,"DataItem.productname")%>  '></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                                 M.R.P.₹:
                                <asp:Label ID="Label2" runat="server" Text=' <%#DataBinder.Eval(Container,"DataItem.price")%>  '></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                
                                </tr>
             <tr>
               
            </tr>
            <tr>
            <td>
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Buy</asp:HyperLink>
            </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
            </td>
        </tr>
    </table> <section id="selection"><div class="container">
          <article id="livingroom">
            <h2>Living Room</h2>
            <img class="furniture-img" src="https://irp-cdn.multiscreensite.com/39eeab08/dms3rep/multi/desktop/lrf+%2811%29.gif" alt="living room furniture">
            <p class="furniture-text">You’ll find sectional sofas, loveseats, recliners, end tables, coffee tables, TV stands, and more.</p>
          </article>
          <article id="bedroom">
            <h2>Bedroom</h2>
            <img class="furniture-img" src="https://irp-cdn.multiscreensite.com/39eeab08/dms3rep/multi/desktop/B200+Derekson.jpg" alt="bedroom furniture">
            <p class="furniture-text">From dressers, nightstands, and armories to mattresses and bed frames, we have everything your bedroom needs.</p>
          </article>
          <article id="diningroom">
            <h2>Dining Room</h2>
            <img class="furniture-img" src="https://irp-cdn.multiscreensite.com/39eeab08/dms3rep/multi/desktop/dr6.jpg" alt="dining room furniture">
            <p class="furniture-text">Create a dining room to match your preferences. We have plenty of options, whether you prefer classic and casual or elegant and sophisticated.</p>
          </article>
        </div>
      
      </section>
      
</body>
</html>