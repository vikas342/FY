using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                bindGrid1();
                bindGrid2();
            }
            else
            {
                Response.Redirect("Signin.aspx");
            }
        }
    }

    private void bindGrid1()
    {

        SqlConnection con = new SqlConnection(CS);
        string qr = "set nocount on; select t1.OrderID,UPPER(t3.Name)as Name,t1.PID,t1.Products,t4.Quantity as StockOpening,t1.Quantity as QtySell,(t4.Quantity-t1.Quantity)as StockAvailable,t2.CartAmount,t2.CartDiscount,t2.TotalPaid,Convert(nvarchar(10),t2.DateOfPurchase,105)as Date,t2.PaymentType,t2.Address from tblOrderProducts as t1 with(nolock) inner join tblOrders as t2 with(nolock) on t1.OrderID=t2.OrderNumber inner join tblUsers as t3 with(nolock) on t1.UserID=t3.Uid inner join tblProductSizeQuantity as t4 with(nolock) on t1.PID=t4.PID";
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private void bindGrid2()
    {

        SqlConnection con = new SqlConnection(CS);
        string qr = "select  distinct t2.PName,t1.Quantity from tblProductSizeQuantity as t1 inner join tblProducts as t2 on t2.PID=t1.PID";
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }


}