using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AlkemyDAL;
using Entities;

namespace Business
{
    public class ProfessorsBLL
    {
        alkemylabsEntities DB = new alkemylabsEntities();

        public List<Professors> GetProfessors()
        {
            List<Professors> listProfessors = DB.professors_table
                .Select(x => new Professors()
                {
                    ProfessorID = x.professor_ID,
                    ProfessorName = x.professor_name.Trim(),
                    ProfessorLastName = x.professor_last_name.Trim(),

                })
                .ToList();

            return listProfessors;
        }
    }
}
