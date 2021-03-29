﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class alkemylabsEntities : DbContext
    {
        public alkemylabsEntities()
            : base("name=alkemylabsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<classes> classes { get; set; }
        public virtual DbSet<professors_table> professors_table { get; set; }
        public virtual DbSet<students> students { get; set; }
    
        public virtual int delete_class(Nullable<int> pclass_code, string class_name, Nullable<int> pclass_quota, Nullable<int> pfull_quota, Nullable<int> pclass_schedule, Nullable<int> pclass_professor, Nullable<int> retVal)
        {
            var pclass_codeParameter = pclass_code.HasValue ?
                new ObjectParameter("pclass_code", pclass_code) :
                new ObjectParameter("pclass_code", typeof(int));
    
            var class_nameParameter = class_name != null ?
                new ObjectParameter("class_name", class_name) :
                new ObjectParameter("class_name", typeof(string));
    
            var pclass_quotaParameter = pclass_quota.HasValue ?
                new ObjectParameter("pclass_quota", pclass_quota) :
                new ObjectParameter("pclass_quota", typeof(int));
    
            var pfull_quotaParameter = pfull_quota.HasValue ?
                new ObjectParameter("pfull_quota", pfull_quota) :
                new ObjectParameter("pfull_quota", typeof(int));
    
            var pclass_scheduleParameter = pclass_schedule.HasValue ?
                new ObjectParameter("pclass_schedule", pclass_schedule) :
                new ObjectParameter("pclass_schedule", typeof(int));
    
            var pclass_professorParameter = pclass_professor.HasValue ?
                new ObjectParameter("pclass_professor", pclass_professor) :
                new ObjectParameter("pclass_professor", typeof(int));
    
            var retValParameter = retVal.HasValue ?
                new ObjectParameter("RetVal", retVal) :
                new ObjectParameter("RetVal", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_class", pclass_codeParameter, class_nameParameter, pclass_quotaParameter, pfull_quotaParameter, pclass_scheduleParameter, pclass_professorParameter, retValParameter);
        }
    
        public virtual int delete_professor(string pprofessor_name, string pprofessor_lastName, Nullable<int> pprofessor_ID, Nullable<int> retVal)
        {
            var pprofessor_nameParameter = pprofessor_name != null ?
                new ObjectParameter("pprofessor_name", pprofessor_name) :
                new ObjectParameter("pprofessor_name", typeof(string));
    
            var pprofessor_lastNameParameter = pprofessor_lastName != null ?
                new ObjectParameter("pprofessor_lastName", pprofessor_lastName) :
                new ObjectParameter("pprofessor_lastName", typeof(string));
    
            var pprofessor_IDParameter = pprofessor_ID.HasValue ?
                new ObjectParameter("pprofessor_ID", pprofessor_ID) :
                new ObjectParameter("pprofessor_ID", typeof(int));
    
            var retValParameter = retVal.HasValue ?
                new ObjectParameter("RetVal", retVal) :
                new ObjectParameter("RetVal", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_professor", pprofessor_nameParameter, pprofessor_lastNameParameter, pprofessor_IDParameter, retValParameter);
        }
    
        public virtual int delete_student(Nullable<int> pfile_number, Nullable<int> pstudent_ID, string pstudent_name, string pstudent_lastName, Nullable<int> retVal)
        {
            var pfile_numberParameter = pfile_number.HasValue ?
                new ObjectParameter("pfile_number", pfile_number) :
                new ObjectParameter("pfile_number", typeof(int));
    
            var pstudent_IDParameter = pstudent_ID.HasValue ?
                new ObjectParameter("pstudent_ID", pstudent_ID) :
                new ObjectParameter("pstudent_ID", typeof(int));
    
            var pstudent_nameParameter = pstudent_name != null ?
                new ObjectParameter("pstudent_name", pstudent_name) :
                new ObjectParameter("pstudent_name", typeof(string));
    
            var pstudent_lastNameParameter = pstudent_lastName != null ?
                new ObjectParameter("pstudent_lastName", pstudent_lastName) :
                new ObjectParameter("pstudent_lastName", typeof(string));
    
            var retValParameter = retVal.HasValue ?
                new ObjectParameter("RetVal", retVal) :
                new ObjectParameter("RetVal", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_student", pfile_numberParameter, pstudent_IDParameter, pstudent_nameParameter, pstudent_lastNameParameter, retValParameter);
        }
    
        public virtual int insert_student(Nullable<int> pfile_number, Nullable<int> pstudent_ID, string pstudent_name, string pstudent_last_name, Nullable<int> retval)
        {
            var pfile_numberParameter = pfile_number.HasValue ?
                new ObjectParameter("pfile_number", pfile_number) :
                new ObjectParameter("pfile_number", typeof(int));
    
            var pstudent_IDParameter = pstudent_ID.HasValue ?
                new ObjectParameter("pstudent_ID", pstudent_ID) :
                new ObjectParameter("pstudent_ID", typeof(int));
    
            var pstudent_nameParameter = pstudent_name != null ?
                new ObjectParameter("pstudent_name", pstudent_name) :
                new ObjectParameter("pstudent_name", typeof(string));
    
            var pstudent_last_nameParameter = pstudent_last_name != null ?
                new ObjectParameter("pstudent_last_name", pstudent_last_name) :
                new ObjectParameter("pstudent_last_name", typeof(string));
    
            var retvalParameter = retval.HasValue ?
                new ObjectParameter("Retval", retval) :
                new ObjectParameter("Retval", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insert_student", pfile_numberParameter, pstudent_IDParameter, pstudent_nameParameter, pstudent_last_nameParameter, retvalParameter);
        }
    }
}