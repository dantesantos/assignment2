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

            //Initialize the controller and inject the mock object
            controller = new HomeController(mock.Object);
        }


        [TestMethod]
        public void Index()
        {
            // Arrange
            //controller = new HomeController(); =====>>>>Inside Initialize!!

            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void MyStudy2()
        {
            // Arrange
            //controller = new HomeController(); =====>>>>Inside Initialize!!

            // Act
            //ViewResult result = controller.MyStudy2() as ViewResult;
            var results = (List<Category>)((ViewResult)controller.MyStudy2()).Model;

            // Assert
            //Assert.AreEqual("MyStudy2", result.ViewBag.Message);
            CollectionAssert.AreEqual(categories.OrderBy(c => c.Date).ToList(), results);
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
