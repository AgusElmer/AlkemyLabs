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
    public partial class Professors : System.Web.UI.Page
    {
        alkemylabsEntities context = new alkemylabsEntities();
        Business.ProfessorsBLL professorsBLL = new ProfessorsBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGrid();
            }
        }

        public void GetGrid()
        {
            gvProfessors.DataSource = professorsBLL.GetProfessors();
            gvProfessors.DataBind();
        }

        protected void gvProfessors_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int professorID = Convert.ToInt32(e.NewValues["ProfessorID"]);

            AlkemyDAL.professors_table myProfessor = context.professors_table.FirstOrDefault(x => x.professor_ID == professorID);

            if (myProfessor != null)
            {
                if ((e.NewValues["ProfessorName"]) != null && (e.NewValues["ProfessorLastName"]) != null)
                {
                    myProfessor.professor_name = e.NewValues["ProfessorName"].ToString();
                    myProfessor.professor_last_name = e.NewValues["ProfessorLastName"].ToString();
                    

                    context.professors_table.Add(myProfessor);
                    context.SaveChanges();
                    gvProfessors.EditIndex = -1;
                    GetGrid();
                }
            }
        }

        protected void gvProfessors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int professorID = Convert.ToInt32(gvProfessors.DataKeys[e.RowIndex]["ProfessorID"]);

            professors_table myProfessor = context.professors_table.FirstOrDefault(b => b.professor_ID == professorID);

            if (myProfessor != null)
            {

                context.professors_table.Remove(myProfessor);

                context.SaveChanges();

                GetGrid();
            }
        }

        protected void lnkbttCloseAlert_Click(object sender, EventArgs e)
        {
            phAlert.Visible = false;
        }

        protected void lnkbttCloseModalNewProfessor_Click(object sender, EventArgs e)
        {
            phNewProfessor.Visible = false;
        }

        protected void lnkbttCancel_Click(object sender, EventArgs e)
        {

        }

        protected void lnkbtttAcceptNewProfessor_Click(object sender, EventArgs e)
        {
            if ((!String.IsNullOrEmpty(txtNewProfessor.Text.Trim())) && (!String.IsNullOrEmpty(txtNewProfessorLastName.Text.Trim())) && (!String.IsNullOrEmpty(txtNewProfessorID.Text.Trim())))
            {

                professors_table professor = new professors_table();
                professor.professor_name = txtNewProfessor.Text.Trim();
                professor.professor_last_name = txtNewProfessorLastName.Text.Trim();
                professor.professor_ID = Convert.ToInt32(txtNewProfessorID.Text);

                context.professors_table.Add(professor);
                context.SaveChanges();

                GetGrid();

                phNewProfessor.Visible = false;

                lblAlert.Text = String.Format("The professor has signed up succesfully.");
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

        protected void btnCreateProfessor_Click(object sender, EventArgs e)
        {
            phNewProfessor.Visible = true;
        }

        protected void gvProfessors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int professorID = Convert.ToInt32(gvProfessors.DataKeys[e.NewEditIndex]["ProfessorID"]);

            AlkemyDAL.professors_table myProfessor = context.professors_table.FirstOrDefault(x => x.professor_ID == professorID);
            gvProfessors.EditIndex = e.NewEditIndex;
        }
    }
}