using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSystemWebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-SBDVLFF5\SQLEXPRESS;Initial Catalog=WebForm;Integrated Security=True");
        void GetEmployeeList()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("exec SELECTALL_SP", conn);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = DropDownList1.SelectedValue="";
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand Insertcmd = new SqlCommand("exec Insertdata " + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + DropDownList1.SelectedValue + "'", conn);
                Insertcmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Inserted Data SuccessFully');", true);
                GetEmployeeList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand Updatecmd = new SqlCommand("exec Update_SP " + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + DropDownList1.SelectedValue + "'", conn);
                Updatecmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Data is Updated SuccessFully');", true);
                GetEmployeeList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand Deletecmd = new SqlCommand("exec Delete_SP " + TextBox1.Text, conn);
                Deletecmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deleted Data SuccessFully');", true);
                GetEmployeeList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Fetch_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlDataAdapter Fetchcmd = new SqlDataAdapter("exec FETCH_SP " + TextBox1.Text, conn);
                DataTable dataTable = new DataTable();
                Fetchcmd.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void FetchBYName_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlDataAdapter FetchBYNamecmd = new SqlDataAdapter("exec FETCHBYNAME_SP '" + TextBox2.Text+"'", conn);
                DataTable dataTable1 = new DataTable();
                FetchBYNamecmd.Fill(dataTable1);
                GridView1.DataSource = dataTable1;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}