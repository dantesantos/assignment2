using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BibleStudyGuide.Models
{
    public class ListsViews
    {
        public List<Author> AllAuthors { get; set; }
        public List<Book> AllBooks { get; set; }
        public List<Chapter> AllChapters { get; set; }        
        public List<Vers> AllVerses { get; set; }
        public List<Message> AllMessages { get; set; }
        public List<Category> AllVerseCategories { get; set; }

        public int VerseID { get; set; }
        public int VerseNumber { get; set; }
        public int AuthorID { get; set; }
        public string AuthorName { get; set; }
        public string BookName { get; set; }
        public int ChapterNumber { get; set; }
        public string VerseContent { get; set; }
        public string Category { get; set; }
        public string Date { get; set; }
        public string Message { get; set; }
        public string Status { get; set; }
        
    }
}