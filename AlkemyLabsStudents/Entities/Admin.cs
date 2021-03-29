using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Admin
    {
        private int userAccount;
        private string password;

        public Admin()
        {
            UserAccount = 0;
            Password = string.Empty;
        }

        public Admin(int pUserAccount, string pPassword)
        {
            UserAccount = pUserAccount;
            Password = pPassword;
        }
        public int UserAccount
        {
            get
            {
                return userAccount;
            }

            set
            {
                userAccount = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }
    }
}
