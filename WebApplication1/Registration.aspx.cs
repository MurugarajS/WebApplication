using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_click(object sender, EventArgs e)
        {


            string cs = "Data Source=DESKTOP-MHG7K4S\\MSSQLSERVER01;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "insert into dbo.data1(FirstName,LastName,Age)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";


            SqlCommand cmd = new SqlCommand(query, con);

           //cmd.Connection = con;

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Inserted! Thak you for your valuable time ..')", true);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string cs = "Data Source=DESKTOP-MHG7K4S\\MSSQLSERVER01;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "delete from dbo.data1 where FirstName='" + TextBox4.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);


            //cmd.Connection = con;

            con.Open();

            try
            {

                cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                Console.Write("the user name not found");
            }
            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Deleted! Thak you for your valuable time ..')", true);



        }
        protected void Button3_Click(object sender, EventArgs e)
        {



            string cs = "Data Source=DESKTOP-MHG7K4S\\MSSQLSERVER01;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "update dbo.data1 set FirstName='" + TextBox5.Text + "',LastName='" + TextBox6.Text + "',Age='" + TextBox7.Text + "' where Auto_id='" + TextBox8.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);


            //cmd.Connection = con;

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Updated! Thak you for your valuable time ..')", true);
        }

    }
}