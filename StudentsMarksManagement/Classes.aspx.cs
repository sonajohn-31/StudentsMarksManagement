using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class Classes : System.Web.UI.Page
    {
        public void ShowData()
        {
            ClassOperations std = new ClassOperations();
            DataSet dsCls = std.GetData();
            gvCls.DataSource = dsCls.Tables["cls"];
            gvCls.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                this.ShowData();
            }

        }

        protected void gvCls_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // this method will be executed automatically whenever click button
            if (e.CommandName == "NewClass")
            {
                // write logic for adding row
                TextBox txtClassname = (TextBox)gvCls.FooterRow.FindControl("txtClassname");
                ClassProperty c1 = new ClassProperty();
                ClassOperations cls = new ClassOperations();
                if (cls.Check(txtClassname.Text) == true)
                {
                    c1.Classname = txtClassname.Text;
                    cls.AddClass(c1);
                    lblinfo.Text = "Added Successfully..!!";
                    this.ShowData();
                }
                else
                    lblinfo.Text = "Class Name Already Exists..!!";
                
            }
        }

        protected void gvCls_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCls.EditIndex = e.NewEditIndex;
            this.ShowData();
        }

        protected void gvCls_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtClassname = (TextBox)gvCls.Rows[e.RowIndex].FindControl("txtClassname");
            Label txtClassid = (Label)gvCls.Rows[e.RowIndex].FindControl("txtClassid");
            ClassProperty s1 = new ClassProperty();
            ClassOperations cls = new ClassOperations();
            s1.Classname = txtClassname.Text;
            s1.Classid = int.Parse(txtClassid.Text);
            cls.UpdateClass(s1);


            gvCls.EditIndex = -1;
            this.ShowData();
        }

        protected void gvCls_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCls.EditIndex = -1;
            this.ShowData();
        }


        protected void gvCls_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label txtClassid = (Label)gvCls.Rows[e.RowIndex].FindControl("txtClassid");
            ClassOperations cls = new ClassOperations();
            cls.DeleteClass(int.Parse(txtClassid.Text));
            this.ShowData();
        }

        protected void gvCls_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCls.PageIndex = e.NewPageIndex;
            this.ShowData();
        }

        protected void gvCls_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvCls_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
