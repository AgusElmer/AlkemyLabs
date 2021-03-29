using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using Business;
using AlkemyDAL;

namespace AlkemyLabsStudents.Restricted
{
    public partial class Classes : System.Web.UI.Page
    {
        alkemylabsEntities context = new alkemylabsEntities();
        Business.ClassesBLL studentsBLL = new ClassesBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGrid();
            }
        }

        public void GetGrid()
        {
            gvClasses.DataSource = studentsBLL.GetClasses();
            gvClasses.DataBind();
        }

        protected void gvClasses_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int classcode = Convert.ToInt32(e.NewValues["ClassCode"]);

            AlkemyDAL.classes myClass = context.classes.FirstOrDefault(x => x.class_code == classcode);

            if (myClass != null)
            {
                if ((e.NewValues["ClassName"]) != null && (e.NewValues["ClassQuota"]) != null && (e.NewValues["ClassProfessorID"].ToString() != null) && (e.NewValues["ClassSchedule"]) != null)
                {
                    myClass.class_name = e.NewValues["ClassName"].ToString();
                    myClass.class_quota = Convert.ToInt32(e.NewValues["ClassQuota"]);
                    myClass.class_professor_dni = Convert.ToInt32(e.NewValues["ClassProfessorID"]);
                    myClass.class_schedule = Convert.ToDateTime(e.NewValues["ClassSchedule"]);

                    context.classes.Add(myClass);
                    context.SaveChanges();
                    gvClasses.EditIndex = -1;
                    GetGrid();
                }
            }
        }

        protected void gvClasses_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int classcode = Convert.ToInt32(gvClasses.DataKeys[e.RowIndex]["ClassCode"]);

            classes myClass = context.classes.FirstOrDefault(b => b.class_code == classcode);

            if (myClass != null)
            {

                context.classes.Remove(myClass);

                context.SaveChanges();

                GetGrid();
            }
        }

        protected void lnkbttCloseAlert_Click(object sender, EventArgs e)
        {
            phAlert.Visible = false;
        }

        protected void lnkbttCloseModalNewClass_Click(object sender, EventArgs e)
        {
            phNewClass.Visible = false;
        }

        protected void lnkbttCancel_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtttAcceptNewClassSchedule_Click(object sender, EventArgs e)
        {
            if ((!String.IsNullOrEmpty(txtNewClassCode.Text.Trim())) && (!String.IsNullOrEmpty(txtNewClassName.Text.Trim())) && (!String.IsNullOrEmpty(txtNewClassQuota.Text.Trim())) && (!String.IsNullOrEmpty(txtNewClassProfessorID.Text.Trim())) && (!String.IsNullOrEmpty(txtNewClassSchedule.Text.Trim())))
            {

                classes classdata = new classes();
                classdata.class_code = Convert.ToInt32(txtNewClassCode.Text);
                classdata.class_name = txtNewClassName.Text.Trim();
                classdata.class_schedule = Convert.ToDateTime(txtNewClassSchedule.Text);
                classdata.class_professor_dni = Convert.ToInt32(txtNewClassProfessorID.Text);
                classdata.class_quota = Convert.ToInt32(txtNewClassQuota.Text);

                context.classes.Add(classdata);
                context.SaveChanges();

                GetGrid();

                phNewClass.Visible = false;

                lblAlert.Text = String.Format("The class has been added.");
                pAlert.CssClass = "alert alertSuccess card";
                phAlert.Visible = true;
                lnkbttCloseAlert.Focus();
            }
            else
            {
                lblAlert.Text = "Camps cant be null";
                pAlert.CssClass = "alert alertWarning card";
                phAlert.Visible = true;
                lnkbttCloseAlert.Focus();
            }


        }

        

        protected void btnCreateClass_Click(object sender, EventArgs e)
        {
            phNewClass.Visible = true;
        }

        protected void gvClasses_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int classcode = Convert.ToInt32(gvClasses.DataKeys[e.NewEditIndex]["ClassCode"]);

            AlkemyDAL.classes myClass = context.classes.FirstOrDefault(x => x.class_code == classcode);
            gvClasses.EditIndex = e.NewEditIndex;
        }
    }
    
}