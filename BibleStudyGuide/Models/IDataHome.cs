using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BibleStudyGuide.Models
{
    public class IDataHome : IMockHomecs
    {
        //DB Connection
        private DbBible db = new DbBible();

        //Categories

        public IQueryable<Category> Categories { get { return db.Categories; } }

        public void Delete(Category category)
        {
            db.Categories.Remove(category);
            db.SaveChanges();
        }

        public Category Save(Category category)
        {
            if (category.CategoryID == 0)
            {
                db.Categories.Add(category);
            }
            else
            {
                db.Entry(category).State = System.Data.Entity.EntityState.Modified;
            }

            db.SaveChanges();
            return category;
        }

        //Messages

        public IQueryable<Message> Messages { get { return db.Messages; } }

        public void Delete(Message message)
        {
            db.Messages.Remove(message);
            db.SaveChanges();
        }

        public Message Save(Message message)
        {
            if (message.MessageID == 0)
            {
                db.Messages.Add(message);
            }
            else
            {
                db.Entry(message).State = System.Data.Entity.EntityState.Modified;
            }

            db.SaveChanges();
            return message;
        }

        //Authors

        public IQueryable<Author> Authors { get { return db.Authors; } }

        //public void Delete(Author author)
        //{
        //    db.Authors.Remove(author);
        //    db.SaveChanges();
        //}

        //public Author Save(Author author)
        //{
        //    if (author.AuthorID == 0)
        //    {
        //        db.Authors.Add(author);
        //    }
        //    else
        //    {
        //        db.Entry(author).State = System.Data.Entity.EntityState.Modified;
        //    }

        //    db.SaveChanges();
        //    return author;
        //}
    }
}