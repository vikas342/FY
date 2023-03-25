using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FY_project
{
    public partial class admin_contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtsend_Click(object sender, EventArgs e)
        {

            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblContact(Username,Email,Message) Values('" + txtUname.Text + "','" + txtEmail.Text + "','" + txtmsg.Text + "')", con);
        cmd.ExecuteNonQuery();

                    clr();
        con.Close();
                    //   lblMsg.Text = "Registration Successfully done";
                    //  lblMsg.ForeColor = System.Drawing.Color.Green;

                }

    Response.Write("<script> alert('Message sent We will contact you soon');  </script>");
                Response.Redirect("~/UserHome.aspx");
            }
            else
{
    Response.Write("<script> alert('Process failed');  </script>");
    lblMsg.ForeColor = System.Drawing.Color.Red;
}

        }

        private bool isformvalid()
{
    if (txtUname.Text == "")
    {
        Response.Write("<script> alert('Plaese enter your name ');  </script>");
        txtUname.Focus();

        return false;
    }

    else if (txtEmail.Text == "")
    {
        Response.Write("<script> alert('Please enter valid email');  </script>");
        txtEmail.Focus();
        return false;
    }
    else if (txtmsg.Text == "")
    {
        Response.Write("<script> alert('Please enter message');  </script>");
        txtmsg.Focus();
        return false;
    }

    return true;
}

private void clr()
{
    txtmsg.Text = string.Empty;

    txtUname.Text = string.Empty;
    txtEmail.Text = string.Empty;

}
    }
}