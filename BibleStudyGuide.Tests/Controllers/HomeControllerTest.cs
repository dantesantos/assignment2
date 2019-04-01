using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BibleStudyGuide;
using BibleStudyGuide.Controllers;
using Moq;
using BibleStudyGuide.Models;

namespace BibleStudyGuide.Tests.Controllers
{
    [TestClass]
    public class HomeControllerTest
    {
        //moq data
        HomeController controller;
        List<Category> categories;
        List<Message> messages;
        List<Author> authors;
        //List<ListsViews> listsViews;
        Mock<IMockHomecs> mock;

        [TestInitialize]
        public void TestInitialize()
        {
            categories = new List<Category>
            {
                new Category{CategoryID = 101, Category1 = "Invented Category #1"},
                new Category{CategoryID = 102, Category1 = "Invented Category #2"},
                new Category{CategoryID = 103, Category1 = "Invented Category #3"}
            };

            // Set up and populate mock object to inject into the controller
            mock = new Mock<IMockHomecs>();
            mock.Setup(c => c.Categories).Returns(categories.AsQueryable());


            messages = new List<Message>
            {
                new Message { MessageID = 201, Message1 = "Invented Message #1" },
                new Message { MessageID = 202, Message1 = "Invented Message #2" },
                new Message { MessageID = 203, Message1 = "Invented Message #3" }
            };

            // Set up and populate mock object to inject into the controller
            //mock = new Mock<IMockHomecs>();
            mock.Setup(c => c.Messages).Returns(messages.AsQueryable());

            authors = new List<Author>
            {
                new Author { AuthorID = 301, AuthorName = "Invented Author #1" },
                new Author { AuthorID = 302, AuthorName = "Invented Author #2" },
                new Author { AuthorID = 303, AuthorName = "Invented Author #3" }
            };

            // Set up and populate mock object to inject into the controller
            //mock = new Mock<IMockHomecs>();
            mock.Setup(c => c.Authors).Returns(authors.AsQueryable());


            //Initialize the controller and inject the mock object
            controller = new HomeController(mock.Object);
        }


        [TestMethod]
        public void IndexLoading()
        {
            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void TestTheListInMyStudy2()
        {
            // Act
            var results = (List<Category>)((ViewResult)controller.MyStudy2()).Model;

            // Assert
            //Assert.AreEqual("MyStudy2", result.ViewBag.Message);
            CollectionAssert.AreEqual(categories.OrderBy(c => c.Date).ToList(), results);
        }

        [TestMethod]
        public void TestMyStudy2View()
        {
            // act
            ViewResult result = controller.MyStudy2() as ViewResult;
            // assert
            Assert.AreEqual("MyStudy2", result.ViewName);
        }

        [TestMethod]
        public void TestTheListInMyMessages()
        {
            //Act
            var resultsMessages = (List<Message>)((ViewResult)controller.MyMessages()).Model;
            //Assert
            CollectionAssert.AreEqual(messages.OrderBy(c => c.Date).ToList(), resultsMessages);
        }

        [TestMethod]
        public void TestMyMessageView()
        {
            // act
            ViewResult result = controller.MyMessages() as ViewResult;
            // assert
            Assert.AreEqual("MyMessages", result.ViewName);
        }

        [TestMethod]
        public void Contact()
        {
            // Arrange
            controller = new HomeController();

            // Act
            ViewResult result = controller.Contact() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }      
        
    }
}
