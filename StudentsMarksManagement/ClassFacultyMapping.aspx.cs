using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentsMarksManagement
{
    public partial class ClassStudentMapping : System.Web.UI.Page
    {
            private void ShowData()
            {
                CFMOperation op = new CFMOperation();
                DataSet ds = new DataSet();
                ds = op.GetData3();
                gvCls.DataSource = ds.Tables["fact"];
                gvCls.DataBind();
            }
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {

                    CFMOperation obj = new CFMOperation();
                    DropDownList1.DataSource = obj.GetData();
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, new ListItem("Select", string.Empty));
                    DropDownList2.DataSource = obj.GetData1();
                    DropDownList2.DataBind();
                    DropDownList2.Items.Insert(0, new ListItem("Select", string.Empty));
                    this.ShowData();


                }

            }

            protected void ButtonAdd_Click(object sender, EventArgs e)
            {
                CFMProperty s = new CFMProperty();
                CFMOperation fop = new CFMOperation();
                if (fop.Check(DropDownList2.SelectedItem.Value, DropDownList1.SelectedItem.Value) == true)
                {
                    s.ClassID = int.Parse(DropDownList2.SelectedItem.Value);
                    s.FacultyId = DropDownList1.SelectedItem.Value;
                    fop.AddFacultyClass(s);
                    lblinfo.Text = "Faculty is mapped Succesfully";
                    this.ShowData();
                }
                else
                    lblinfo.Text = "Faculty is already  mapped";
            }
        
    }
}