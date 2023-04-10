using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication3
{
    public partial class Registration : System.Web.UI.Page
    {
       /* SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebForm1ConnectionString"].ConnectionString);

        SqlCommand cmd = null;
*/
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!this.IsPostBack)
            {


                gvbind();



            }

        }
        protected void Submit_click(object sender, EventArgs e)
        {


            string cs = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "insert into dbo.data1(FirstName,LastName,Age)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";



            SqlCommand cmd = new SqlCommand(query, con);

            //cmd.Connection = con;

            con.Open();

            cmd.ExecuteNonQuery();



            con.Close();

            gvbind();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Inserted! Thak you for your valuable time ..')", true);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string cs = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "delete from dbo.data1 where Auto_id='" + TextBox4.Text + "'";

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

            gvbind();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Deleted! Thak you for your valuable time ..')", true);



        }
        protected void Button3_Click(object sender, EventArgs e)
        {



            string cs = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "update dbo.data1 set FirstName='" + TextBox5.Text + "',LastName='" + TextBox6.Text + "',Age='" + TextBox7.Text + "' where Auto_id='" + TextBox8.Text + "'";

            SqlCommand cmd = new SqlCommand(query, con);


            //cmd.Connection = con;

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            gvbind();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Updated! Thak you for your valuable time ..')", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {




            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Updated! Thak you for your valuable time ..')", true);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            string cs = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "select * from dbo.data1 where Auto_id='" + (TextBox10.Text) + "'";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                TextBox10.Text = r.GetValue(1).ToString();






            }











            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record getted! Thak you for your valuable time ..')", true);
        }

        private void gvbind()
        {



            string sc = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
            SqlConnection con = new SqlConnection(sc);


            string query = "select * from dbo.data1;";


            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            //cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {



            if (e.CommandName == "Select")

            {

              /*  con.Open();*/


                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                //Fetch value of Name.
                string Firstname = (row.FindControl("txtName") as TextBox).Text;
                string Lastname = (row.FindControl("txtlname") as TextBox).Text;
                string Age = (row.FindControl("Age") as TextBox).Text;

                string Auto_id = (row.FindControl("id") as TextBox).Text;





                TextBox5.Text = Firstname;

                TextBox6.Text = Lastname;
                TextBox7.Text = Age;
                TextBox8.Text = Auto_id;
            //    TextBox4.Text = Auto_id;


                //Fetch value of Country



                gvbind();

            }


            if (e.CommandName == "Select1")

            {



                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                //Fetch value of Name.


                string Auto_id = (row.FindControl("id") as TextBox).Text;





                // string   welcome = Auto_id;

                //TextBox1.Text = welcome;


                string cs = "Data Source=DESKTOP-NB93CBA\\MSSQLSERVER03;Initial Catalog=Registration;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);

                string query = "delete from data1 where Auto_id='" + Auto_id + "'";

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

                gvbind();










            }


        }
    }
}









