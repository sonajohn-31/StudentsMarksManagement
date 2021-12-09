using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class Faculty : System.Web.UI.Page
    {
        private void ShowData()
        {
            FacultyOperation op = new FacultyOperation();
            DataSet ds = new DataSet();
            ds = op.GetData();
            gvFaculty.DataSource = ds.Tables["fact"];
            gvFaculty.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ShowData();
        }

        protected void btnFact_Click(object sender, EventArgs e)
        {
            FacultyProperty s = new FacultyProperty();
            s.FacultyID = txtFactId.Text;
            s.FacultyName = txtFactName.Text;
            s.Gender = txtGender.Text;
            s.Address = txtAddress.Text;
            s.Location = txtLocation.Text;
            s.Phone = txtPhone.Text;
            s.Email = txtEmail.Text;
            s.Password = txtPassword.Text;

            FacultyOperation fop = new FacultyOperation();
            fop.AddFaculty(s);
            lblinfo.Text = "Added succesfully";
            this.ShowData();

        }
    }
}