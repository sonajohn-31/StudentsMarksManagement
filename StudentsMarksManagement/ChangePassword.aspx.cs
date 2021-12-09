using StudentsMarksManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace StudentsMarksManagement
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                LoginOperation lp = new LoginOperation();
                Login cs = new Login();
                lp.FacultyId = Session["fid"].ToString();
                lp.FacultyOldPassword = TextOp.Text;
                lp.FacultyNewPassword = TextAdd.Text;
                bool x = cs.Chk(lp);
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