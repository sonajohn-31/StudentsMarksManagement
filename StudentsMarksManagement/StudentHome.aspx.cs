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
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                string name = Session["Email"].ToString();
                string pwd = Session["Password"].ToString();
                StudentOperation fop = new StudentOperation();
                DataSet ds = new DataSet();
                ds = fop.showStud(name, pwd);
                GridStudent.DataSource = ds.Tables["can"];
                GridStudent.DataBind();
            }

            else
                lblinfo.Text = "No Student Data available!!";


            
        }
    }
}
