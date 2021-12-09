using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using StudentMarkManagement;

namespace StudentsMarksManagement
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (TxtUserId.Text == "Admin" && TxtPwd.Text == "Admin" && TxtUserType.SelectedItem.Value == "Admin")
            {

                Response.Redirect("AdminHome.aspx");

            }
            else if (TxtUserType.SelectedItem.Value == "Faculty")
            {
                FacultyOperation fop = new FacultyOperation();
                DataSet ds = fop.logincheck(TxtUserId.Text, TxtPwd.Text);
                if ((ds.Tables["can"].Rows.Count == 1))
                {
                    Session["name"] = ds.Tables["can"].Rows[0]["FactName"].ToString();
                    Session["Email"] = ds.Tables["can"].Rows[0]["Email"].ToString();
                    Session["Password"] = ds.Tables["can"].Rows[0]["Password"].ToString();
                    Session["Fid"] = ds.Tables["can"].Rows[0]["Fid"].ToString();
                    Response.Redirect("FacultyHome.aspx");
                }
                else
                    lblinfo.Text = "Please Check The Credentials";
            }
            else if (TxtUserType.SelectedItem.Value == "Student")
            {
                StudentOperation fop = new StudentOperation();
                DataSet ds = fop.logincheck(TxtUserId.Text, TxtPwd.Text);
                if ((ds.Tables["can"].Rows.Count == 1))
                {
                    Session["name"] = ds.Tables["can"].Rows[0]["StdName"].ToString();
                    Session["Email"] = ds.Tables["can"].Rows[0]["Email"].ToString();
                    Session["Password"] = ds.Tables["can"].Rows[0]["Password"].ToString();
                    Session["Rollno"] = ds.Tables["can"].Rows[0]["Rollno"].ToString();
                    Response.Redirect("StudentHome.aspx");
                }
                else
                    lblinfo.Text = "Please Check The Credentials";
            }

            else
                lblinfo.Text = "Please Check The Credentials";


        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if (TxtUserId.Text == "Admin" && TxtPwd.Text == "Admin" && TxtUserType.SelectedItem.Value == "Admin")
            {


                if (TxtUserType.SelectedItem.Value == "Admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (TxtUserType.SelectedItem.Value == "Faculty")
                {
                    Response.Redirect("FacultyHome.aspx");
                }
                else if (TxtUserType.SelectedItem.Value == "Student")
                {
                    Response.Redirect("StudentHome.aspx");
                }
            }
            else if (TxtUserType.SelectedItem.Value == "Faculty")
            {
                FacultyOperation fop = new FacultyOperation();
                DataSet ds = fop.logincheck(TxtUserId.Text, TxtPwd.Text);
                if ((ds.Tables["can"].Rows.Count == 1))
                {

                    Session["fname"] = ds.Tables["can"].Rows[0]["FactName"].ToString();
                    Session["Email"] = ds.Tables["can"].Rows[0]["Email"].ToString();
                    Session["Password"] = ds.Tables["can"].Rows[0]["Password"].ToString();
                    Session["Fid"] = ds.Tables["can"].Rows[0]["Fid"].ToString();
                    Response.Redirect("FacultyHome.aspx");
                }
                else
                    lblinfo.Text = "Faculty is not mapped!";
            }
            else if (TxtUserType.SelectedItem.Value == "Student")
            {
                Login sop = new Login();
                DataSet ds = sop.LogCheckstudent(TxtUserId.Text, TxtPwd.Text);
                if ((ds.Tables["can"].Rows.Count == 1))
                {

                    Session["name"] = ds.Tables["can"].Rows[0]["ClassName"].ToString();
                    Session["Email"] = ds.Tables["can"].Rows[0]["Email"].ToString();
                    Session["Password"] = ds.Tables["can"].Rows[0]["Password"].ToString();
                    Session["rno"] = ds.Tables["can"].Rows[0]["Rollno"].ToString();
                    Response.Redirect("StudentHome.aspx");
                }
                else
                    lblinfo.Text = "Please Check The Credentials ";
            }
            else
                lblinfo.Text = "Please Check The Credentials";

            TxtUserId.Text = "";
            TxtPwd.Text = "";
            TxtUserType.SelectedIndex = 0;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}