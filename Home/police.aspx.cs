using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class police : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from reportTable", con);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            GridView1.DataSource = dtbl;
            GridView1.DataBind();

            //chart 
            SqlConnection cot = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\database\database.mdf;Integrated Security=True;Connect Timeout=30");
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from chart_Table", cot);
            da.Fill(ds);
            Chart1.DataSource = ds;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}