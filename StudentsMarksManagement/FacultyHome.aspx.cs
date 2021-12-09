using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class FacultyHome : System.Web.UI.Page
    {
       
        
       protected void Page_Load(object sender, EventArgs e)
       {
            string name = Session["Email"].ToString();
            string pwd = Session["Password"].ToString();
            FacultyOperation fop = new FacultyOperation();
            Faculty f = new Faculty();
            DataSet ds = new DataSet();
            ds = fop.logincheck(name, pwd);
            gvFactinfo.DataSource = ds.Tables["can"];
            gvFactinfo.DataBind();
        }

            protected void grdfacinfo_ItemCommand(object source, RepeaterCommandEventArgs e)
            {

            }
        
    }
}