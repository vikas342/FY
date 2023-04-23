<%@ Page Title="Add size" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


         <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add Size</h2>
                <hr />

                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Size Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                   
                        </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
                   
                        </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlCategory" CssClass ="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                   
                        </div>
                </div>
                

                 <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Sub Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlSubCategory" CssClass ="form-control" runat="server"></asp:DropDownList>
                  
                        </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlGender" CssClass ="form-control" runat="server"></asp:DropDownList>
                  
                        </div>
                </div>

                
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSize" CssClass ="btn btn-primary " runat="server" Text="Add Size" OnClick="btnAddSize_Click"    />
                        
                    </div>
                </div>
                

            </div>


        <hr />

 <div class="panel panel-primary">

               <div class="panel-heading"> All Sizes</div>


     <asp:repeater ID="rptrSize" runat="server">

         <HeaderTemplate>
             <table class="table table-hover">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Size</th>
                        <th>Brand</th>
                        <th>Category</th>
                         <th>Sub Category</th>
                         <th>Gender</th>
                         <th>Edit</th>

                        

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SizeID") %> </th>
                    <td><%# Eval("SizeName") %>   </td>
                  <td><%# Eval("Name") %>   </td>
                  <td><%# Eval("CatName") %>   </td>
                   <td><%# Eval("SubCatName") %>   </td>
                   <td><%# Eval("GenderName") %>   </td>
                    <td><a href="EditSize.aspx">Edit</a></td>

                    
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

