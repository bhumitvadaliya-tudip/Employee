using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Mini_Project
{
    public partial class Management : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-K3VFTU2;Initial Catalog=Essential;Integrated Security=True";
        }

        protected void RadButton1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO EmployeeData" + "(EmpID,FirstName,LastName,City,State,Zip)values(@EmpID,@FirstName,@LastName,@City,@State,@Zip)", con);
            cmd.Parameters.AddWithValue("@EmpID", RadNumericTextBox1.Text);
            cmd.Parameters.AddWithValue("@FirstName", RadTextBox1.Text);
            cmd.Parameters.AddWithValue("@LastName", RadTextBox2.Text);
            cmd.Parameters.AddWithValue("@City", RadTextBox3.Text);
            cmd.Parameters.AddWithValue("@State", RadTextBox4.Text);
            cmd.Parameters.AddWithValue("@Zip", RadNumericTextBox2.Text);

            int t = cmd.ExecuteNonQuery();
            if(t>0)
            {
                Response.Redirect("Employee.aspx");
            }
       
            con.Close();
        }
    }
}