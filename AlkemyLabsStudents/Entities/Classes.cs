using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Classes
    {
        private int classCode;
        private string className;
        private int? classQuota;
        private int professor_ID;
        private DateTime classSchedule;

        public Classes()
        {
            ClassCode = 0;
            ClassName = string.Empty;
            ClassQuota = 0;
            Professor_ID = 0;
            ClassSchedule = DateTime.Now;
        }

        public Classes(int pClassCode, string pClassName, int pClassQuota, int pProfessor_ID, DateTime pClassSchedule)
        {
            ClassCode = pClassCode;
            ClassName = pClassName;
            ClassQuota = pClassQuota;
            Professor_ID = pProfessor_ID;
            ClassSchedule = pClassSchedule;

            

        }
        public int ClassCode
        {
            get
            {
                return classCode;
            }

            set
            {
                classCode = value;
            }
        }

        public string ClassName
        {
            get
            {
                return className;
            }

            set
            {
                className = value;
            }
        }

        public int? ClassQuota
        {
            get
            {
                return classQuota;
            }

            set
            {
                classQuota = value;
            }
        }

        public DateTime ClassSchedule
        {
            get
            {
                return classSchedule;
            }

            set
            {
                classSchedule = value;
            }
        }

        public int Professor_ID
        {
            get
            {
                return professor_ID;
            }

            set
            {
                professor_ID = value;
            }
        }

    }
}

