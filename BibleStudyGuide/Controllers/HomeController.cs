using BibleStudyGuide.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace BibleStudyGuide.Controllers
{
    //https://localhost:44366/
    //https://bootswatch.com/3/spacelab/
    
    //[Authorize]
    [RequireHttps]
    public class HomeController : Controller
    {
        //private DbBible db = new DbBible();

        IMockHomecs db;
        //Constructors
        //Default Constructor
        public HomeController()
        {
            this.db = new IDataHome();
        }
        public HomeController(IMockHomecs mockDb)
        {
            this.db = mockDb;    
        }

        //test done
        public ActionResult Index()
        {            
            return View();
        }
        
        //test done
        public ActionResult Contact()
        {
            ViewBag.Message = "Dante Coelho Cerqueira Santos";

            return View();
        }

        //public ActionResult Create()
        //{
        //    return View();
        //}

        //test done
        public ActionResult MyStudy2()
        {
            var categories = db.Categories.OrderBy(c => c.Date).ToList();
            return View("MyStudy2", categories);
        }

        //test done
        public ActionResult MyMessages()
        {
            var messages = db.Messages.OrderBy(c => c.Date).ToList();
            return View("MyMessages", messages);
        }

        
        public ActionResult ListsViews(string AuthorName, int chapterNumber)
        {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            
            Data myData = new Data();
            ListsViews myList = new ListsViews
            {
                AllAuthors = myData.GetAllAuthors(),
                AllBooks = myData.GetAllBooks(),
                AllChapters = myData.GetAllChapters(),
                AllVerses = myData.GetAllVerses(),
                AllMessages = myData.GetAllMessages(),
                AllVerseCategories = myData.GetAllVerseCategories()
            };

            return View(myList);
        }

        [HttpPost]
        public ActionResult ListsViews(ListsViews model, string AuthorName, int chapterNumber)
        {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            
            Data myData = new Data();
            ListsViews myList = new ListsViews
            {
                AllAuthors = myData.GetAllAuthors(),
                AllBooks = myData.GetAllBooks(),
                AllChapters = myData.GetAllChapters(),
                AllVerses = myData.GetAllVerses(),
                AllMessages = myData.GetAllMessages(),
                AllVerseCategories = myData.GetAllVerseCategories()
            };

            try
            {
                Category cat = new Category
                {
                    AuthorID = model.AuthorID,
                    AuthorName = model.AuthorName,
                    BookName = model.BookName,
                    Category1 = model.Category,
                    ChapterNumber = model.ChapterNumber,
                    Date = model.Date,
                    VerseNumber = model.VerseNumber,
                    VerseContent = model.VerseContent,
                    Status = model.Status
                };

                //db.Categories.Add(cat);
                //db.SaveChanges();
                db.Save(cat);

            }
            catch (Exception e)
            {
                throw e;
            }
            //return Redirect("MyStudy");

            return View(myList);
        }

        [HttpPost]
        public ActionResult SaveMessage(ListsViews model, string AuthorName, int chapterNumber)
        {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            
            Data myData = new Data();
            ListsViews myList = new ListsViews
            {
                AllAuthors = myData.GetAllAuthors(),
                AllBooks = myData.GetAllBooks(),
                AllChapters = myData.GetAllChapters(),
                AllVerses = myData.GetAllVerses(),
                AllMessages = myData.GetAllMessages(),
                AllVerseCategories = myData.GetAllVerseCategories()
            };

            try
            {
                Message message = new Message
                {
                    AuthorName = model.AuthorName,
                    BookName = model.BookName,
                    ChapterNumber = model.ChapterNumber,
                    Date = model.Date,
                    Message1 = model.Message,
                    Status = model.Status
                };

                //db.Messages.Add(message);
                //db.SaveChanges();
                db.Save(message);

            }
            catch (Exception e)
            {
                throw e;
            }
            return Redirect("MyStudy2");
        }

        
        ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //Message message = db.Messages.Find(id);
            Message message = db.Messages.SingleOrDefault(m => m.MessageID == id);

            if (message == null)
            {
                return HttpNotFound();
            }
            ViewBag.MessageId = new SelectList(db.Messages, "MessageId", "Message1", message.MessageID);
            return View(message);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MessageId")] Message message)
        {
            if (ModelState.IsValid)
            {
                //db.Entry(message).State = EntityState.Modified;
                //db.SaveChanges();
                db.Save(message);
                return RedirectToAction("MyStudy2");
            }
            return View(message);
        }


        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //Category category = db.Categories.Find(id);
            Category category = db.Categories.SingleOrDefault(c => c.CategoryID == id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmedVerse(int id)
        {
            //Category category = db.Categories.Find(id);
            Category category = db.Categories.SingleOrDefault(c => c.CategoryID == id);
            //db.Categories.Remove(category);
            //db.SaveChanges();
            db.Delete(category);
            return RedirectToAction("MyStudy2");
        }



        public ActionResult DeleteMessage(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //Message message = db.Messages.Find(id);
            Message message = db.Messages.SingleOrDefault(m => m.MessageID == id);
            if (message == null)
            {
                return HttpNotFound();
            }
            return View(message);
        }

        [HttpPost, ActionName("DeleteMessage")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmedMessage(int id)
        {
            //Message message = db.Messages.Find(id);
            Message message = db.Messages.SingleOrDefault(m => m.MessageID == id);
            //db.Messages.Remove(message);
            //db.SaveChanges();
            db.Delete(message);
            return RedirectToAction("MyStudy2");
        }
    }
}