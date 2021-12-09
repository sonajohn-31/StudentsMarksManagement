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
    public partial class StdInfo : System.Web.UI.Page
    {
        private void ShowData()
        {
            if (Session["fid"] != null)
            {
                StudentOperation op = new StudentOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataFac(Session["fid"].ToString());
                GridStudent.DataSource = ds.Tables["std"];
                GridStudent.DataBind();
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