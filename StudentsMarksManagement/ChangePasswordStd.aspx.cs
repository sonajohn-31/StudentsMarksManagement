using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class ChangePasswordStd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonAdd1_Click(object sender, EventArgs e)
        {
            if (Session["rollno"] != null)
            {
                LoginOperation lp = new LoginOperation();
                Login cs = new Login();
                lp.StudentId = Session["rollno"].ToString();
                lp.StudentOldPassword = TextOp.Text;
                lp.StudentNewPassword = TextAdd.Text;
                bool x = cs.changepwdstud(lp);
                if (x)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Changed Succesfully')", true);
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password/Fid is incorrect')", true);


                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Login to Continue')", true);
            }
        }
    }
}