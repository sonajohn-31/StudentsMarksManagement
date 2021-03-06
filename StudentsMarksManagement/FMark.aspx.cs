using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using StudentsMarksManagement;


namespace StudentsMarksManagement
{
    public partial class FMark: System.Web.UI.Page
    {

        private void ShowData()
        {
            if (Session["fid"] != null)
            {
                markOperation op = new markOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataMarF(Session["fid"].ToString());
                GridFaculty.DataSource = ds.Tables["fact"];
                GridFaculty.DataBind();
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