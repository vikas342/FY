<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
  <br />
  <br />
  <br />


    <div class="panel panel-primary">
      <div class="panel-heading"><h5>Product Sells Reports</h5>  </div>
      <div class="panel-body">
          <div class="row">
             <div class="col-md-12">

                <div style="">
                    <asp:GridView ID="GridView1" CssClass="table" runat="server" BackColor="White" Font-Size="8pt" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="6" CellSpacing="5">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                
                </div>
             
             </div>

      

          </div>
      
      
      </div>
      <div class="panel-footer">
       <div class="panel-heading"><h5> Quantity Start Report</h5>  </div>
      <div class="panel-body">
          <div class="row">
             <div class="col-md-12">
                <div class="table-responsive">
                    <asp:GridView ID="GridView2" runat="server" CssClass="table" Font-Size="8pt">
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"  />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099"  />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                
                </div>
             
             </div>


          </div>
      
      
      </div>
      
      </div>
    </div>
    
</div>


</asp:Content>

