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
        private DbBible db = new DbBible();
        public ActionResult Index()
        {            
            return View();
        }
        public ActionResult MyStudy(string AuthorName)
        {
            ViewBag.AuthorName = AuthorName;
            
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

        public ActionResult Contact()
        {
            ViewBag.Message = "Dante Coelho Cerqueira Santos";

            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        public ActionResult MyStudy2()
        {
            var categories = db.Categories.OrderBy(c => c.Date).ToList();
            return View(categories);
        }

        public ActionResult MyMessages()
        {
            var messages = db.Messages.OrderBy(c => c.Date).ToList();
            return View(messages);
        }

        public ActionResult AuthorsIndex(string AuthorName)
        {
            ViewBag.AuthorName = AuthorName;
            var authors = db.Authors.ToList();
            return View(authors);
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
        public ActionResult ListsViews(ListsViews model, /*string verseCont,*/ string AuthorName, int chapterNumber)
        {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            //ViewBag.status = status;
            //ViewBag.category = category;


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

                db.Categories.Add(cat);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw e;
            }
            //return Redirect("MyStudy");

            return View(myList);
        }

        [HttpPost]
        public ActionResult SaveMessage(ListsViews model, string AuthorName, int chapterNumber/*, string status, string category*/)
        {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            //ViewBag.Status = status;

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

                db.Messages.Add(message);
                db.SaveChanges();

            }
            catch (Exception e)
            {
                throw e;
            }
            return Redirect("MyStudy2");
        }

        public ActionResult StudyView(string AuthorName, int chapterNumber) {
            //ViewBag.AuthorName = AuthorName;
            //ViewBag.chapterNumber = chapterNumber;

            return View();

        }

        
        ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Message message = db.Messages.Find(id);
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
                db.Entry(message).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("MyStudy2");
            }
            return View(message);
        }


        public ActionResult DeleteVerse(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Category category = db.Categories.Find(id);
            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        [HttpPost, ActionName("DeleteVerse")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmedVerse(int id)
        {
            Category category = db.Categories.Find(id);
            db.Categories.Remove(category);
            db.SaveChanges();
            return RedirectToAction("MyStudy2");
        }



        public ActionResult DeleteMessage(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Message message = db.Messages.Find(id);
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
            Message message = db.Messages.Find(id);
            db.Messages.Remove(message);
            db.SaveChanges();
            return RedirectToAction("MyStudy2");
        }
    }
}