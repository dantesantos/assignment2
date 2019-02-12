using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BibleStudyGuide.Startup))]
namespace BibleStudyGuide
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
