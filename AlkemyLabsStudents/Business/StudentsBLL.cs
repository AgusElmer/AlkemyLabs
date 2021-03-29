using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Threading.Tasks;
using AlkemyDAL;
using Entities;

namespace Business
{
    public class StudentsBLL
    {
        alkemylabsEntities DB = new alkemylabsEntities();

        public List<Students> GetStudents()
        {
            List<Students> listStudents = DB.students
                .Select(x => new Students()
                {
                    FileNumber = x.file_number,
                    Id = x.student_ID,
                    StudentName = x.student_name.Trim(),
                    LastName = x.student_last_name.Trim(),

                })
                .ToList();

            return listStudents;
        }

        public void UpdateGrid(int filenumber)
        {
           

        }
    }
}

