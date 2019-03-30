using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibleStudyGuide.Models
{
    public interface IMockHomecs
    {
        //Messages
        IQueryable<Message> Messages { get; }
        Message Save(Message message);
        void Delete(Message message);


        //Categories
        IQueryable<Category> Categories { get; }
        Category Save(Category category);
        void Delete(Category category);
    }
}
