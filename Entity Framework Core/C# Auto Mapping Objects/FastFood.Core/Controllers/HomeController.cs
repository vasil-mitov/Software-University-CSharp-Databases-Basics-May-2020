﻿namespace FastFood.Core.Controllers
{
    using System.Diagnostics;

    using ViewModels;

    using Microsoft.AspNetCore.Mvc;

    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return this.View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return this.View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
