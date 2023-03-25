<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserOrders.aspx.cs" Inherits="FY_project.UserOrders" %>


  <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>UserOders</title>
    <link href="Styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
    <link href="css/Custome.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

<div class="container">
    <br />
    <br />

    <br />
  <h2>Order history</h2>  

      <div class="panel panel-primary">
      <div class="panel-heading">Orders</div>
      <div class="panel-body">
     
          <div class="text-center text-muted" style="padding:0px">

                        <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>



  <asp:Repeater ID="rptrProducts"  runat="server">
                                <ItemTemplate>
                                    <%--Show cart details start--%>
                                    <div class="media" style="border: 1px solid black; padding:10px">
                                        <div class="media-left">
                                            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" target="_blank">
                                                <img class="media-object" width="200px" src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" onerror="this.src='Images/NoImg.png'" style="height:200px"/>
                                            </a>
                                        </div>
                                        <div class="media-body">
                                           
                                           

                                               <div class="pull-center form-inline">
                                                   <br />
                                                   <br />
                                                   <br />


                                                   

                                                    <div class="probrand"><%# Eval ("pname") %>  </div>
                                                    <div>Total ammount : <%# Eval ("Total","{0:c}") %> </div> 

                                                    <div>Total Quantity : <%# Eval ("qty") %> </div> 

                                                    <div>Payment mode : <%# Eval ("ptype") %>  </div>
                                                    <div>Date of purchase : <%# Eval ("dbuy") %> </div> 
                                                    <div>Order status : <%# Eval ("dstatus") %>  </div>


                                            </div>
                                            <br />
                                            <p>
                                                <br />
                                                  </p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
      
      </div>
      <div class="panel-footer">  </div>
    </div>
</div>

 






</asp:Content>
