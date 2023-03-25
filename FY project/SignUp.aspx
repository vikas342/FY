<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sriracha&display=swap" rel="stylesheet">

    <style>
        body{


            
           color:white;
           
         background-image:url('Images/bg4.jpg');
         background-repeat:no-repeat;
         background-size:cover;

        }
    </style>

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

                          <a class="navbar-brand" href="Default.aspx" style="background: #121FCF;
background: linear-gradient(to top right, #121FCF 40%, #CF1512 60%);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent; font-size:25px ;font-weight:bolder; font-family: 'Sriracha', cursive;"><span>
                       <img src="Images/Eshopping.png" style="width:70px" alt="Shopppy" height ="30" /></span>Shopppy</a>
   
                </div>
                
                <div class="navbar-collapse collapse text-center" style="font-family: 'Roboto', sans-serif; font-size:15px; font-weight:bolder">
                <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a> </li>
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
                        <li ><a href ="usr_contact.aspx">Contact Us</a> </li>
                         <li ><a href ="About.aspx">About Us</a> </li>
                   

                        <li><a href ="SignUp.aspx">SignUp</a> </li>
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

              <h2>Signup</h2>
                <hr />
           

                

            <div class="form-group">

            <label class="col-md-2 control-label ">UserName:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your UserName" MaxLength="8"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="Enter Your Username" ControlToValidate="txtUname" ForeColor="Red"></asp:RequiredFieldValidator>
                   
            </div>
            </div>


            
            <div class="form-group">

            <label class="col-md-2 control-label ">Password:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password" MaxLength="10"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass ="text-danger " ErrorMessage="Enter valid Password" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
           
                </div>
            </div>
          
            
            <div class="form-group">
            <label class="col-md-2 control-label ">Confirm Password:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm password" MaxLength="10"></asp:TextBox>
                
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="Confirm Your Password" ControlToValidate="txtCPass" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

          
            </div>

            <div class="form-group">

            <label class="col-md-2 control-label ">Your Full Name:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="Enter Your Fullname" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

          
            </div>


            <div class="form-group">

            <label class="col-md-2 control-label ">Email:</label>
            <div class="col-md-3">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="Enter Your Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
           
            </div>

          
            </div>

            <div class="form-group">

            <label class="col-md-2 control-label "></label>
             <div class="col-md-3">
                 <asp:Button ID="txtsignup" Class="btn btn-primary" runat="server" Text="Signup" OnClientClick="target='_blank;'" OnClick="txtsignup_Click" />
            &nbsp;
                    </div>
          
            </div>

         


            </div>



            
        </div>
                 <!--<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>--!>
         
         <!---signup page end--->


        <!---Footer COntents Start here---->

        <footer class="footer-pos">
            <div class ="container ">
       
               <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><%--<a href="SignIn.aspx"> Admin Login  </a>--%></p> 
                <p>&copy;2022 Eshopping.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="usr_contact.aspx">Contact Us</a>&middot;<a href ="About.aspx">About Us</a> </p>
           </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>
