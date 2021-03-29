using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Professors
    {
        private string professorName;
        private string professorLastName;
        private int professorID;

        public Professors()
        {
            ProfessorName = string.Empty;
            ProfessorLastName = string.Empty;
            ProfessorID = 0;
        }

        public Professors(string pProfessorName, string pProfessorLastName, int pProfessorID)
        {
            ProfessorName = pProfessorName;
            ProfessorLastName = pProfessorLastName;
            ProfessorID = pProfessorID;

        }
        public string ProfessorName
        {
            get
            {
                return professorName;
            }

            set
            {
                professorName = value;
            }
        }

        public string ProfessorLastName
        {
            get
            {
                return professorLastName;
            }

            set
            {
                professorLastName = value;
            }
        }
        public int ProfessorID
        {
            get
            {
                return professorID;
            }

            set
            {
                professorID = value;
            }
        }
    }
}

