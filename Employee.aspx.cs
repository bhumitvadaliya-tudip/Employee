using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Telerik.Web.UI;
using System.Windows;

namespace Mini_Project
{
    public partial class Employee : System.Web.UI.Page
    {
      
        public object EmpID { get; private set; }
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Management.aspx");
        }

        protected void gridUsers_UpdateCommand(object source, GridCommandEventArgs e)
        {
            var editableItem = ((GridEditableItem)e.Item);
            var EmpID = (int)editableItem.GetDataKeyValue("EmpID");
            string FirstName = (editableItem["FirstName"].Controls[0] as TextBox).Text;
            string LastName = (editableItem["LastName"].Controls[0] as TextBox).Text;
            string City = (editableItem["City"].Controls[0] as TextBox).Text;
            string State = (editableItem["State"].Controls[0] as TextBox).Text;
            string Zip = (editableItem["Zip"].Controls[0] as TextBox).Text;
     
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-K3VFTU2;Initial Catalog=Essential;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE EmployeeData SET EmpID = '" + EmpID + "', FirstName = '" + FirstName + "', LastName = '" + LastName + "', State = '" + State + "', City = '" + City + "', Zip = '" + Zip + "' WHERE EmpID = '" + EmpID + "'", con);
                int i = cmd.ExecuteNonQuery();
                MessageBox.Show("Record Updated Successfully");
                con.Close();

            }
            catch (Exception ex)
            {
                gridUsers.Controls.Add(new LiteralControl("Unable to update EmployeeData. Reason: " + ex.Message));
                e.Canceled = true;
            }

        }

        protected void gridUsers_DeleteCommand(object source, GridCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-K3VFTU2;Initial Catalog=Essential;Integrated Security=True");
            var EmpID = (int)((GridDataItem)e.Item).GetDataKeyValue("EmpID");
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM EmployeeData WHERE EmpID=@EmpID", con);
            cmd.Parameters.AddWithValue("EmpID", EmpID);
            int i = cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}