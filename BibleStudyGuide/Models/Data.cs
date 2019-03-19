using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BibleStudyGuide.Models
{
    public class Data
    {
        DbBible db = new DbBible();
        public List<Author> GetAllAuthors()
        {
            return db.Authors.ToList();
        }

        public List<Book> GetAllBooks()
        {
            return db.Books.ToList();
        }

        public List<Chapter> GetAllChapters()
        {
            return db.Chapters.ToList();
        }

        public List<Vers> GetAllVerses()
        {
            return db.Verses.ToList();
        }
        public List<Message> GetAllMessages()
        {
            return db.Messages.ToList();
        }
        public List<Category> GetAllVerseCategories()
        {
            return db.Categories.ToList();
        }
    }
}