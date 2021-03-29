using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AlkemyDAL;
using Entities;

namespace Business
{
    public class AdminBLL
    {
        alkemylabsEntities DB = new alkemylabsEntities();

        public List<Admin> GetAdmin()
        {
            List<Admin> listAdmin = DB.admin_account
                .Select(x => new Admin()
                {
                    UserAccount = x.user_account,
                    Password = x.password.Trim(),


                })
                .ToList();

            return listAdmin;
        }
    }
}
