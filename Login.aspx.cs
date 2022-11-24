using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace LoginFormASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from LoginCred where Username = @user and Password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserTextBox.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@pass", PassTextBox.Text.ToString().Trim());


            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful.')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Falied.')</script>");
            }
            con.Close();
        }
    }
}