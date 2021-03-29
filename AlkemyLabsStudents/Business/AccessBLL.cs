using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AlkemyDAL;
using Entities;
namespace Business
{
    public class AccessBLL
    {
        alkemylabsEntities DB = new alkemylabsEntities();

        public List<Access> GetAccess()
        {
            List<Access> listAccess = DB.access
                .Select(x => new Access()
                {
                    UserPassword = x.user_password,
                    AccessID = x.access_id,
                    Enabled = x.enabled.Trim(),
                    Menu = x.menu.Trim(),

                })
                .ToList();

            return listAccess;
        }
    }
}
