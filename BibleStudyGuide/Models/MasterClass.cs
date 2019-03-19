using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BibleStudyGuide.Models
{
    public class MasterClass
    {
        public List<Category> ListVerseCategories { get; set; }
        public List<Vers> ListVerses { get; set; }
    }
}