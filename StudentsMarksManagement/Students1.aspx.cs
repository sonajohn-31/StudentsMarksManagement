using StudentMarkManagement;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class Students1 : System.Web.UI.Page
    {
            private void ShowData()
            {
                StudentOperation op = new StudentOperation();
                DataSet ds = new DataSet();
                ds = op.GetData();
                GridStudent.DataSource = ds.Tables["std"];
                GridStudent.DataBind();
            }
            protected void Page_Load(object sender, EventArgs e)
            {
                this.ShowData();
                if (!IsPostBack)
                {

                    CFMOperation obj = new CFMOperation();
                    ddlID.DataSource = obj.GetData1();
                    ddlID.DataBind();
                }

            }

            protected void ButtonAdd_Click(object sender, EventArgs e)
            {
                Student s = new Student();
                s.RollNumber = TextRoll.Text;
                s.StudentName = TextSname.Text;
                s.Gender = TextGender.Text;
                s.Address = TextAdd.Text;
                s.Location = TextLoc.Text;
                s.Phone = TextPh.Text;
                s.Email = TextEm.Text;
                s.Password = TextPwd.Text;
                s.ClassId = int.Parse(ddlID.SelectedItem.Value);

                StudentOperation std = new StudentOperation();
                std.AddStudent(s);
                LabelError.Text = "Added succesfully";
                this.ShowData();
                TextRoll.Text = "";
                TextSname.Text = "";
                TextGender.Text = "";
                TextAdd.Text = "";
                TextLoc.Text = "";
                TextPh.Text = "";
                TextEm.Text = "";
                TextPwd.Text = "";
                ddlID.SelectedItem.Value = "";

            }
        
    }
}
