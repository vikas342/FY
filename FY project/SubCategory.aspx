<%@ Page Title="Add subcategory" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add SubCategory</h2>
                <hr />

                 <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Main CategoryID"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlMainCatID" CssClass ="form-control" runat="server"></asp:DropDownList>
                   
                        </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SubCategory Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                  
                        </div>
                </div>
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSubCategory" CssClass ="btn btn-primary " runat="server" Text="Add SubCategory" OnClick="btnAddSubCategory_Click"    />
                        
                    </div>
                </div>
                

            </div>


        <hr />

 <div class="panel panel-primary">

               <div class="panel-heading"> All Sub Categories</div>


     <asp:repeater ID="rptrSubCat" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub-Category</th>
                        <th>Main Category</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SubCatID") %> </th>
                    <td><%# Eval("SubCatName") %>   </td>
                 <td><%# Eval("CatName") %>   </td>
                                     <td><a href="EditSubCategory.aspx">Edit</a></td>

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

