﻿using Business;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Turbo_Phim.Models;
using Turbo_Phim.Services;

namespace Turbo_Phim.Controllers
{
    [Authorize(Roles = "Admin, Super Admin")]
    public class AdminMoviesController : Controller
    {
        // GET: AdminMovies
        public ActionResult Index(int? page)
        {

            if (page == null)
            {
                if (TempData["currentPage"] != null)
                {
                    page = Int32.Parse(TempData["currentPage"].ToString()); //Chuyển hướng từ action delete
                }
                else
                {
                    page = 1;
                    TempData["currentPage"] = page;
                }
            }
            else
                TempData["currentPage"] = page;



            if (TempData["strSort"] == null)
                TempData["strSort"] = "ID";
            if (TempData["sortDirection"] == null)
                TempData["sortDirection"] = "false";
          


            FilmService phimService = new FilmService();


            ViewBag.maxPage = phimService.countPage();
            ViewBag.maxIndexPage = phimService.getMaxIndexPage();
            ViewBag.maxProductOnEachPage = phimService.getMaxProductOnEachPage();

            return View(phimService.getAllFilms(page, (String)TempData["strSort"], Boolean.Parse(TempData["sortDirection"].ToString())));
        }


        public ActionResult SortByName()
        {
            TempData["strSort"] = "Name";
            getInfo();
            return RedirectToAction("Index");

        }

        public ActionResult SortByDate()
        {
            TempData["strSort"] = "Date";
            getInfo();
            return RedirectToAction("Index");

        }

        //Hàm lấy các thông tin lưu trữ hiện tại trạng thái của page
        private void getInfo()
        {
            
            TempData["currentPage"] = TempData["indexPage"];
           
        }

        public ActionResult SortByRank()
        {
            TempData["strSort"] = "Rank";
            getInfo();
            return RedirectToAction("Index");

        }

        public ActionResult SortByGenre()
        {
            TempData["strSort"] = "Genre";
            getInfo();
            return RedirectToAction("Index");

        }

        public ActionResult SortByDuration()
        {
            TempData["strSort"] = "Duration";
            getInfo();
            return RedirectToAction("Index");

        }


        public ActionResult Delete(String codeFilm)
        {
            FilmService fsv = new FilmService();
            fsv.deletePhim(codeFilm);
            getInfo();
            return RedirectToAction("Index");
        }

       
        public ActionResult Edit(String codeFilm)
        {
            FilmService fsv = new FilmService();

            return View(fsv.getFilmByID(codeFilm));
        }





        public ActionResult CreateNewFilm()
        {
            return View();
        }


        public ActionResult SortDirection(String sortDirection)
        {
            TempData["sortDirection"] = sortDirection;

            getInfo();

            return RedirectToAction("Index");

        }


        public ActionResult AddNewFilm(HttpPostedFileBase file, HttpPostedFileBase banner, String reissue,  String genre, String country, String content, PhimViewModels fvm)//String name, String rank, String actor,
        //    String director, String duration, String reissue, String genre, String country, String content, String trailer)
        {
            String fileName = "";
            if (file != null && file.ContentLength > 0)
            {
                fileName = Path.GetFileName(file.FileName);
                var path = Path.Combine(Server.MapPath("~/Images/"), fileName);
                file.SaveAs(path);
            }
            else
            {
                fileName = "defaultAvatar.jpg";
            }


            String fileNameBanner = "";
            if (banner != null && banner.ContentLength > 0)
            {
                fileNameBanner = Path.GetFileName(banner.FileName);
                var path = Path.Combine(Server.MapPath("~/Images/"), fileNameBanner);
                banner.SaveAs(path);
            }
            else
            {
                fileNameBanner = "defaultBanner.jpg";
            }


            Phim p = new Phim();
            p.DiemDanhGia = fvm.DiemDanhGia;
            p.NoiDung = content;
            p.NgayPhatHanh = DateTime.ParseExact(reissue, "MM/dd/yyyy", null); ;
            p.TenPhim = fvm.TenPhim;
            p.TinhTrang = true;
            p.ThoiLuong = fvm.ThoiLuong;
            p.DaoDien = fvm.DaoDien;
            p.DienVien = fvm.DienVien;
            if(genre != "")
            p.MS_TheLoai = Int32.Parse(genre);
            if(country != "")
            p.MS_NuocSX = Int32.Parse(country);
            p.URL_Trailer = fvm.URL_Trailer;
            p.HinhAnh = "/Images/" + fileName;
            p.AnhBanner = "/Images/" + fileNameBanner;
            FilmService filmsv = new FilmService();

            TempData["CreateFilmResult"] = filmsv.addNewFilmd(p);
            return RedirectToAction("CreateFilmResult");
    



           
        }


        public ActionResult CreateFilmResult()
        {
       
            return View();

        
        
        
        
        
        }


        public ActionResult ChangeMaxProductOnEachPage(string maxProductOnEachPage)
        {
            ViewBag.maxProductOnEachPage = maxProductOnEachPage;



            FilmService filmService = new FilmService();
            filmService.changeMaxProdcuctOnEachPage(Int32.Parse(maxProductOnEachPage));



            return RedirectToAction("Index");
        }







        public ActionResult EditFilm(HttpPostedFileBase file, HttpPostedFileBase banner, String reissue, String genre, String country, String content, String codeFilm, PhimViewModels fvm) {
            String fileName = "";
            if (file != null && file.ContentLength > 0)
            {
                fileName = Path.GetFileName(file.FileName);
                var path = Path.Combine(Server.MapPath("~/Images/"), fileName);
                file.SaveAs(path);
            }

            String fileNameBanner = "";
            if (banner != null && banner.ContentLength > 0)
            {
                fileNameBanner = Path.GetFileName(banner.FileName);
                var path = Path.Combine(Server.MapPath("~/Images/"), fileNameBanner);
                banner.SaveAs(path);
            }




            Phim p = new Phim();
            p.MaSo = Int32.Parse(codeFilm);
            p.DiemDanhGia = fvm.DiemDanhGia;
            p.NoiDung = content;
            p.NgayPhatHanh = DateTime.ParseExact(reissue, "MM/dd/yyyy", null); ;
            p.TenPhim = fvm.TenPhim;
            p.TinhTrang = true;
            p.ThoiLuong = fvm.ThoiLuong;
            p.DaoDien = fvm.DaoDien;
            p.DienVien = fvm.DienVien;
            if (genre != "")
                p.MS_TheLoai = Int32.Parse(genre);
            if (country != "")
                p.MS_NuocSX = Int32.Parse(country);
            p.URL_Trailer = fvm.URL_Trailer;


            //Nếu người dùng không upload ảnh mới thì sẽ lấy lại ảnh cũ
            if (fileName != "")
                p.HinhAnh = "/Images/" + fileName;
            else
                p.HinhAnh = (String)TempData["currentAvatar"];


            if (fileNameBanner != "")
                p.AnhBanner = "/Images/" + fileNameBanner;
            else
                p.AnhBanner = (String)TempData["currentBanner"];

            FilmService filmsv = new FilmService();
            filmsv.EditFilm(p);




            return RedirectToAction("Index");
        }




        public ActionResult Genre(int value)
        {
            ViewBag.DefaultGenreValue = value;
            GenreService genre = new GenreService();
            return View(genre.getAllGener());
        }

        public ActionResult Country(int value)
        {
            ViewBag.DefaultCountryValue = value;
            CountryService country = new CountryService();

            return View(country.getAllCountry());
        }
    }
}