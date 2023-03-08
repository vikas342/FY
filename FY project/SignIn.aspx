<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
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
</head>
<body>
    <form id="form1" runat="server">
     
    <div>
        <div class ="navbar navbar-default navbar-fixed-top " role ="navigation"  >
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>  <a class="navbar-brand" href="Default.aspx" style="background: #121FCF;
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
                        <li ><a href ="Contact.aspx">Contact US</a> </li>
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

        <!----singin form start--->

        <div class ="container ">
            <div class ="form-horizontal ">
                <h2>Login Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                
              <%--  for forgot password--%>
              
                <%--
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>
                --%>



                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
                    </div>
                </div>


            </div>


        </div>
        <!----singin form End--->

          <!---Footer COntents Start here---->
        <footer>
            <br />
            <br />

        <br />
            <br />
            <br />
            <br />
            <br />

        <hr />

            <div class =" alert bg-secondary p-5">
             <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><%--<a href="SignIn.aspx"> Admin Login  </a>--%></p> 
                <p>&copy;2022 Eshopping.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="Contact.aspx">Contact Us</a>&middot;<a href ="About.aspx">About Us</a> </p>
            </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>
