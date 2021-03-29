using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AlkemyLabsStudents.Startup))]
namespace AlkemyLabsStudents
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
