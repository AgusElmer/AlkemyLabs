using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using Business;
using AlkemyDAL;

namespace AlkemyLabsStudents.Restricted
{
    public partial class Students : System.Web.UI.Page
    {
        alkemylabsEntities context = new alkemylabsEntities();
        Business.StudentsBLL studentsBLL = new StudentsBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetGrid();
            }
        }

        public void GetGrid()
        {
            gvStudents.DataSource = studentsBLL.GetStudents();
            gvStudents.DataBind();
        }

        protected void gvStudents_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int filenumber = Convert.ToInt32(e.NewValues["FileNumber"]);

            AlkemyDAL.students myStudent = context.students.FirstOrDefault(x => x.file_number == filenumber);

            if (myStudent != null)
            {
                if ((e.NewValues["StudentName"]) != null && (e.NewValues["LastName"]) != null && (e.NewValues["Id"].ToString() != null))
                {
                    myStudent.student_name = e.NewValues["StudentName"].ToString();
                    myStudent.student_last_name = e.NewValues["LastName"].ToString();
                    myStudent.student_ID = Convert.ToInt32(e.NewValues["Id"]);

                    context.students.AddOrUpdate(myStudent);
                    context.SaveChanges();
                    gvStudents.EditIndex = -1;
                    GetGrid();
                }
            }
        }

        protected void gvStudents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int filenumber = Convert.ToInt32(gvStudents.DataKeys[e.NewEditIndex]["FileNumber"]);

            AlkemyDAL.students myStudent = context.students.FirstOrDefault(x => x.file_number == filenumber);
            gvStudents.EditIndex = e.NewEditIndex;

            
        }

        protected void gvStudents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string x = e.Row.Cells[2].Text;
        }

        protected void gvStudents_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {




            int filenumber = Convert.ToInt32(gvStudents.DataKeys[e.RowIndex]["FileNumber"]);

            students myStudent = context.students.FirstOrDefault(b => b.file_number == filenumber);

            if (myStudent != null)
            {

                context.students.Remove(myStudent);

                context.SaveChanges();

                GetGrid();

            }
        }

        protected void lnkbttCloseAlert_Click(object sender, EventArgs e)
        {
            phAlert.Visible = false;
        }

        protected void lnkbttCloseModalStudent_Click(object sender, EventArgs e)
        {
            phStudents.Visible = false;

        }

        protected void lnkbttCancel_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtttAcceptNewStudent_Click(object sender, EventArgs e)
        {


            if ((!String.IsNullOrEmpty(txtNewFileNumber.Text.Trim())) && (!String.IsNullOrEmpty(txtNewStudent.Text.Trim())) && (!String.IsNullOrEmpty(txtNewStudentLastName.Text.Trim())) && (!String.IsNullOrEmpty(txtNewStudentLastName.Text.Trim())))
            {

                students student = new students();
                student.student_ID = Convert.ToInt32(txtNewStudentID.Text);
                student.file_number = Convert.ToInt32(txtNewFileNumber.Text);
                student.student_name = txtNewStudent.Text.Trim();
                student.student_last_name = txtNewStudentLastName.Text.Trim();

                context.students.AddOrUpdate(student);
                context.SaveChanges();

                GetGrid();

                phStudents.Visible = false;

                lblAlert.Text = String.Format("The student has Signed Up succesfully.");
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

        protected void btnCreateStudents_Click(object sender, EventArgs e)
        {
            phStudents.Visible = true;
        }
    }
}
