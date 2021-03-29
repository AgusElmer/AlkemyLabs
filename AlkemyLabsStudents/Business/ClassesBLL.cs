using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entities;
using AlkemyDAL;

namespace Business
{
    public class ClassesBLL
    {
        alkemylabsEntities DB = new alkemylabsEntities();

        public List<Classes> GetClasses()
        {
            List<Classes> listClasses = DB.classes
                .Select(x => new Classes()
                {
                    ClassCode = x.class_code,
                    ClassName = x.class_name.Trim(),
                    ClassQuota = x.class_quota,
                    ClassSchedule = x.class_schedule,
                    Professor_ID = x.class_professor_dni,

                })
                .ToList();

            return listClasses;
        }
    }
}
