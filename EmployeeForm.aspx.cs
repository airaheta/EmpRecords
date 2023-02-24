using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussinesslogic;
using BussinessObject;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace EmployeeRecord
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
                ResetForm();
                lblHireDate.Text = String.Format("{0:dd/MM/yyyy}", DateTime.Now);
            }
            
        }
        protected void txtId_TextChanged(object sender, EventArgs e)
        {

        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtId.Text)) // Id validation
            {
                UserBL BLuser = new UserBL();
                UserBO BOuser = new UserBO();
                BOuser.EmployeeID = int.Parse(txtId.Text);
                BOuser.EmployeeFirstName = txtFirstName.Text;
                BOuser.EmployeeLastName = txtLastName.Text;
                BOuser.EmployeePhone = txtPhone.Text;
                BOuser.EmployeeZip = txtZip.Text;
                BOuser.HireDate = DateTime.Parse(lblHireDate.Text);
                BLuser.SaveUserRegisrationBL(BOuser);
                FillGrid();
                ResetForm();
            }
        }
        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtId.Text)) // Id validation
            {
                UserBL BLuser = new UserBL();
                UserBO BOuser = new UserBO();
                BOuser.EmployeeID = int.Parse(txtId.Text);
                BOuser.EmployeeFirstName = txtFirstName.Text;
                BOuser.EmployeeLastName = txtLastName.Text;
                BOuser.EmployeePhone = txtPhone.Text;
                BOuser.EmployeeZip = txtZip.Text;
                BOuser.HireDate = DateTime.Parse(lblHireDate.Text);
                BLuser.DelUserRegisrationBL(BOuser);
                FillGrid();
                ResetForm();
            }
        }
        protected void BtnFind_Click(object sender, EventArgs e)
        {
            UserBL BLuser = new UserBL();
            UserBO BOuser = new UserBO();
            if (String.IsNullOrEmpty(txtLastName.Text) && String.IsNullOrEmpty(txtPhone.Text))
            {
                FillGrid();
            }
            else {

                if (!String.IsNullOrEmpty(txtLastName.Text))
                {
                    BOuser.EmployeeLastName = txtLastName.Text;
                };
                if (!String.IsNullOrEmpty(txtPhone.Text))
                {
                    BOuser.EmployeePhone = txtPhone.Text;
                };
                List<UserBO> userlist = new List<UserBO>();
                userlist = BLuser.FindUserRegisrationBL(BOuser);
                if (userlist[0].EmployeeID == -1)
                {
                    GridView1.DataSource = new List<UserBO>();
                }
                else
                {
                    GridView1.DataSource = userlist;
                } 
                GridView1.DataBind();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void ResetForm()
        {
            txtId.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtZip.Text = "";
        }
        protected void FillGrid()
        {
            UserBL BLuser = new UserBL();
            UserBO BOuser = new UserBO();
            List<UserBO> userlist = new List<UserBO>();
            BOuser.EmployeeID = -1;
            userlist = BLuser.FindUserRegisrationBL(BOuser);
            if (userlist[0].EmployeeID == -1)
            {
                GridView1.DataSource = new List<UserBO>();
            }
            else
            {
                GridView1.DataSource = userlist;
            }
            GridView1.DataBind();
        }
    }
}