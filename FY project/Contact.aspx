<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="FY_project.Contact" %>

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


       
    </form>
</body>
</html>
