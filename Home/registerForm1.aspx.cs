using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Home
{
    public partial class registerForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedItem.Value;
            string fullname = Textname.Text;
            string username = Textuser.Text;
            string password = Textpassword.Text;
            string address = Textaddress.Text;
            string phone_no = Textpnumber.Text;
            string nic = Textnic.Text;
            string email = Textemail.Text;
            string l_no = Textlnumber.Text;
            string t_no = Texttnumber.Text;
            string vehi_no = Textvnumber.Text;
            string year = Textyear.Text;
            string make = Textmake.Text;
            string b_style = Textbstyle.Text;
            string modle = Textmodle.Text;
            if (title != "" && fullname != "" && username != "" && password != "" && address != "" && phone_no != "" && nic != "" && email != "" && l_no != "" && t_no != "" && vehi_no != "" && year != "" && make != "" && b_style != "" && modle != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
                string sql = " Insert into register_Table values('"+title+"','"+fullname+"','"+username+"','"+password+"','"+address+"','"+phone_no+"','"+nic+"','"+email+"','"+l_no+"','"+t_no+"','"+vehi_no+"','"+year+"','"+make+"','"+b_style+"','"+modle+"')";
                SqlCommand cmd = new SqlCommand(sql, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("report.aspx");
                }
                catch (Exception ex)
                { 
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("please insert all data to the fields");
            
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userandstaff.aspx");
        }
    }
}