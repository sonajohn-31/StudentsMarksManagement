using StudentMarkManagement;
using StudentsMarksManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class AddMarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["fid"] != null)
                {

                    markOperation obj = new markOperation();
                    TextName.DataSource = obj.GetData(Session["fid"].ToString());
                    TextName.DataBind();
                    TextName.Items.Insert(0, new ListItem("Select", string.Empty));
                    TextCid.DataSource = obj.GetData1(Session["fid"].ToString());
                    TextCid.DataBind();
                    TextCid.Items.Insert(0, new ListItem("Select", string.Empty));
                    DropMark.Items.Insert(0, new ListItem("Select", string.Empty));

                }
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                markOperation mo = new markOperation();
                marks s = new marks();
                if (mo.Check(TextName.SelectedValue, DropMark.Text) == false)
                {
                    s.ExamType = DropMark.Text;
                    s.Science = int.Parse(TextSc.Text);
                    s.Maths = int.Parse(TextMa.Text);
                    s.Computer = int.Parse(TextCo.Text);
                    float y = (float.Parse(TextSc.Text) + float.Parse(TextMa.Text) + float.Parse(TextCo.Text)) / 3;
                    s.Total = s.Computer + s.Maths + s.Science;
                    s.Average = y;
                    if ((s.Total / 3) >= 90)
                    {
                        s.Grade = 'A';
                    }
                    else if ((s.Total / 3) >= 80)
                    {
                        s.Grade = 'B';
                    }
                    else if ((s.Total / 3) >= 70)
                    {
                        s.Grade = 'C';
                    }
                    else if ((s.Total / 3) >= 60)
                    {
                        s.Grade = 'D';
                    }
                    else
                    {
                        s.Grade = 'F';
                    }
                    s.RollNo = TextName.SelectedValue;
                    s.ClassId = int.Parse(TextCid.SelectedValue);
                    s.FacultyId = Session["fid"].ToString();

                    bool x = mo.AddMark(s);
                    if (x)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('MARK UPDATED')", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('MARK DETAILS NOT UPDATED')", true);

                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mark Details Already Existed')", true);
                }
            }
        }



        //    Student s = new Student();
        //    s.RollNumber = TextRol.Text;
        //    s.StudentName = TextSname.Text;
        //    s.Gender = TextGender.Text;
        //    s.Address = TextAdd.Text;
        //    s.Location = TextLoc.Text;
        //    s.Phone = TextPhon.Text;
        //    s.Email = Textemail.Text;
        //    s.Password = TextPass.Text;
        //    s.ClassId = int.Parse(TextCid.SelectedItem.Value);

        //    StudentOperation std = new StudentOperation();
        //    bool x = std.AddStudent(s);

        //    if (x)
        //    {
        //        Response.Redirect("ShowStudents.aspx");
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR!! DETAILS NOT UPDATED')", true);
        //    }
        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR!! DETAILS NOT UPDATED')", true);
        //}

    }
}