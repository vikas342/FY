<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_contact.aspx.cs" Inherits="FY_project.admin_contact" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <title>Contact us</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body{


            
           color:white;
           
         background-image:url('Images/bg4.jpg');
         background-repeat:no-repeat;
         background-size:cover;

        }
    </style>
       <br />
        <br />
     
        <div class ="container">
               
            <div class="form-horizontal">
          <br />

              <h2>Fill form to get in touch</h2>
                <hr />
           

            <div class="form-group">
            

            <label class="col-md-2 control-label ">Email: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator" CssClass ="text-danger " runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                   
            </div>

          
            </div>

            <div class="form-group">

            <label class="col-md-2 control-label ">Name: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" TextMode="SingleLine" placeholder="Enter Your Name"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass ="text-danger " runat="server" ErrorMessage="Enter Your Name" ControlToValidate="txtUname" ForeColor="Red"></asp:RequiredFieldValidator>
                   
            </div>
            </div>


      

            <div class="form-group">

            <label class="col-md-2 control-label ">Message: </label>
            <div class="col-md-3">
            <asp:TextBox ID="txtmsg" TextMode="MultiLine" Columns="10" rows="5" runat="server" Class="form-control"  placeholder="Enter Your Message" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass ="text-danger " runat="server" ErrorMessage="Enter Message" ControlToValidate="txtmsg" ForeColor="Red"></asp:RequiredFieldValidator>
            
            </div>

          
            </div>



            <div class="form-group">

            <label class="col-md-2 control-label "></label>
              <div class="col-md-3">
                 <asp:Button ID="txtsignup" Class="btn btn-primary" runat="server" Text="Send" OnClick="txtsend_Click" />
            &nbsp;
                    </div>
          
            </div>

         


            </div>



            
        </div>
                 <!--<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>--!>
         
         <!---signup page end--->

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


       
</asp:Content>
