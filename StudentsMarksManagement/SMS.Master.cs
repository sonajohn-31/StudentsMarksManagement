using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class SMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Classes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Classes.aspx");
        }

        protected void Students_Click(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }

        protected void Faculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("Faculty.aspx");
        }

        protected void ClassStudentMapping_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClassStudentMapping.aspx");
        }

        protected void AdminHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}