using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Access
    {
        private int userPassword;
        private int accesID;
        private string enabled;
        private string menu;

        public Access()
        {
            UserPassword = 0;
            AccessID = 0;
            Enabled = string.Empty;
            Menu = string.Empty;
        }

        public Access(int pUserPassword, int pAcessID, string pEnabled, string pMenu)
        {
            UserPassword = pUserPassword;
            AccessID = pAcessID;
            Enabled = pEnabled;
            Menu = pMenu;
        }

        public int UserPassword
        {
            get
            {
                return userPassword;
            }

            set
            {
                userPassword = value;
            }
        }

        public int AccessID
        {
            get
            {
                return accesID;
            }

            set
            {
                accesID = value;
            }
        }

        public string Enabled
        {
            get
            {
                return enabled;
            }

            set
            {
                enabled = value;
            }
        }

        public string Menu
        {
            get
            {
                return menu;
            }

            set
            {
                menu = value;
            }
        }
    }
}
