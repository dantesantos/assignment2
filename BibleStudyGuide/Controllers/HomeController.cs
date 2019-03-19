using BibleStudyGuide.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BibleStudyGuide.Controllers
{
    //https://bootswatch.com/3/spacelab/
    public class HomeController : Controller
    {
        private DbBible db = new DbBible();
        public ActionResult Index()
        {            
            return View();
        }
        public ActionResult MyStudy()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Create()
        {
            return View();
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
            return Redirect("MyStudy");
        }

        public ActionResult ExportData(string AuthorName, int chapterNumber) {
            ViewBag.AuthorName = AuthorName;
            ViewBag.chapterNumber = chapterNumber;
            return View();

        }
    }
}