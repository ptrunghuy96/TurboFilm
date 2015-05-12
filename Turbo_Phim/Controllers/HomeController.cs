﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Turbo_Phim.Models;

namespace Turbo_Phim.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {


            //FilmBus bus = new FilmBus();
            //bus.searchFilm4("Gary Oldman", "Ly An", "Trung Quoc", "Tam Ly");

            ViewBag.HomeStatus = "active";
            ViewBag.VideoStatus = "inactive";
            ViewBag.ReviewStatus = "inactive";
            ViewBag.ContactStatus = "inactive";
            return View();
        }


        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult Genre()
        {
            GenreService genre = new GenreService();
            return View(genre.getAllGener());
        }

        public ActionResult Country()
        {
        
            CountryService country = new CountryService();

            return View(country.getAllCountry());
        }
    }
}