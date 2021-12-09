using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class ExamMarksaspx : System.Web.UI.Page
    {
        private void ShowData()
        {
            if (Session["rollno"] != null)
            {
                markOperation op = new markOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataMarStud(Session["rollno"].ToString());
                GridStud.DataSource = ds.Tables["std"];
                GridStud.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                this.ShowData();
            }

        }
    }
}