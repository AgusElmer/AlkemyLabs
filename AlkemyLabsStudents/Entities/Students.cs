using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entities
{
    public class Students
    {
        private string studentName;
        private string lastName;
        private int? id;
        private int fileNumber;

        public Students()
        {
            StudentName = string.Empty;
            LastName = string.Empty;
            Id = 0;
            FileNumber = 0;
        }

        public Students(string pStudentName, string pLastName, int pID, int pFileNumber)
        {
            StudentName = pStudentName;
            LastName = pLastName;
            Id = pID;
            FileNumber = pFileNumber;

            /*completar despues */ 

        }
        public string StudentName
        {
            get
            {
                return studentName;
            }

            set
            {
                studentName = value;
            }
        }

        public string LastName
        {
            get
            {
                return lastName;
            }

            set
            {
                lastName = value;
            }
        }

        public int? Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public int FileNumber
        {
            get
            {
                return fileNumber;
            }

            set
            {
                fileNumber = value;
            }
        }

    }
}
