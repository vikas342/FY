﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="FY_project.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="Default.aspx" >
                        <span >                    <img src="Images/Eshopping.png" style="width:70px" alt="Shopppy" height ="30" /></span>Shopppy</a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a> </li>
                         <li ><a href ="About.aspx">About</a> </li>
                        <li ><a href ="#">Contact US</a> </li>
                        <%--<li ><a href ="#">Blog-</a> </li>--%>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">

                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 

                                <li> <a href="ManTshirt.aspx">T-shirt</a></li>
                                <li> <a href ="ManShirt.aspx">Shirts</a></li>
                                <li> <a href ="ManDenims.aspx">Jeans</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="WomanTop.aspx">Top</a></li>
                                <li> <a href ="WomanKurtis.aspx">Kurtis</a></li>
                                <li> <a href ="WomanSarees.aspx">Sarees</a></li>
                            </ul>

                        </li>
                        <li class ="active"><a href ="SignUp.aspx">SignUp</a> </li>
                        <li ><a href ="SignIn.aspx">SignIn</a> </li>
                    </ul>
                </div>



            </div>


        </div>


    </div>
          <br />
        <br />
        <br />

        <!---signup page--->
        <div class ="container">
               
            <div class="form-horizontal">

              <h2>Fill form to get in touch</h2>
                <hr />
           

            <div class="form-group">
            

            <label class="col-md-2 control-label ">Email: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>

          
            </div>

            <div class="form-group">

            <label class="col-md-2 control-label ">Name: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>
            </div>


      

            <div class="form-group">

            <label class="col-md-2 control-label ">Message: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtmsg" TextMode="MultiLine" Columns="10" rows="5" runat="server" Class="form-control" placeholder="Enter Your Message"></asp:TextBox>
            </div>

          
            </div>



            <div class="form-group">

            <label class="col-md-2 control-label "></label>
              <div class="col-md-3">
                 <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="Send" OnClick="txtsend_Click" />
            &nbsp;
                    </div>
          
            </div>

         


            </div>



            
        </div>
                 <!--<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>--!>
         
         <!---signup page end--->


        <!---Footer COntents Start here---->
        <hr />

        <footer class="footer-pos">
            <div class ="container ">
               <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><%--<a href="SignIn.aspx"> Admin Login  </a>--%></p> 
                <p>&copy;2022 Eshopping.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Default.aspx">Products</a> </p>
           </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>