using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class FileNumber
    {
        private int registryFileNumber;
        private int registryClassCode;
        private int registryID;

        public FileNumber()
        {
            RegistryFileNumber = 0;
            RegistryClassCode = 0;
            RegistryID = 0;
        }

        public FileNumber(int pRegistryFileNumber, int pRegistryClassCode, int pRegistryID)
        {
            RegistryFileNumber = pRegistryFileNumber;
            RegistryClassCode = pRegistryClassCode;
            RegistryID = pRegistryID;
        }
        public int RegistryFileNumber
        {
            get
            {
                return registryFileNumber;
            }

            set
            {
                registryFileNumber = value;
            }
        }

        public int RegistryClassCode
        {
            get
            {
                return registryClassCode;
            }

            set
            {
                registryClassCode = value;
            }
        }

        public int RegistryID
        {
            get
            {
                return registryID;
            }

            set
            {
                registryID = value;
            }
        }
    
       
    }
}
