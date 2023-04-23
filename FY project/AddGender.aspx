<%@ Page Title="Add gender" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add Gender</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                  
                        </div>
                </div>


                


                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddBrand" CssClass ="btn btn-primary " runat="server" Text="Add" OnClick="btnAddBrand_Click"  />
                        
                    </div>
                </div>
                
              
                 



                


            </div>
        <hr />

 <div class="panel panel-primary">

               <div class="panel-heading"> All Gender</div>


     <asp:repeater ID="rptrGender" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Gender</th>
                     

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tbody>
             <tr>
                    <th> <%# Eval("GenderID") %> </th>
                    <td><%# Eval("GenderName") %>   </td>

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

