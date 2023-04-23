﻿<%@ Page Title="Add category" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add Category</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Category Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                  
                        </div>
                </div>
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddtxtCategory" CssClass ="btn btn-primary " runat="server" Text="Add Category" OnClick="btnAddtxtCategory_Click"   />
                        
                    </div>
                </div>
                

            </div>


        <hr />

 <div class="panel panel-primary">

               <div class="panel-heading"> All Categories</div>


     <asp:repeater ID="rptrCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Categories</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("CatID") %> </th>
                    <td><%# Eval("CatName") %>   </td>
                                     <td><a href="EditCategory.aspx">Edit</a></td>

                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
            

   
</div>

        </div>
</asp:Content>

