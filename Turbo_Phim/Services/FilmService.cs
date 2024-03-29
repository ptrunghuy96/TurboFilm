﻿using Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Turbo_Phim.Models;

namespace Turbo_Phim.Services
{
    public class FilmService
    {
        private FilmBus bus = new FilmBus();

        public List<PhimViewModels> getAllFilms(int? page, String strSort, bool isASC)
        {
            if (page == null)
                page = 1;
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.getAllFilms((int)page, strSort, isASC);
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p, page, strSort, isASC);
                result.Add(pvm);
            }

            return result;
        }




        private PhimViewModels Phim2PhimViewModels(Phim p,  int? page = 1,string strSort = "ID", bool isASC = true)
        {
            PhimViewModels pvm = new PhimViewModels();

            pvm.MaSo = p.MaSo;
            pvm.TenPhim = p.TenPhim;
            pvm.NoiDung = p.NoiDung;
            pvm.URL_Trailer = p.URL_Trailer;
            pvm.DiemDanhGia = p.DiemDanhGia;
            pvm.ThoiLuong = p.ThoiLuong;
            pvm.DienVien = p.DienVien;
            pvm.DaoDien = p.DaoDien;
            pvm.HinhAnh = p.HinhAnh;
            pvm.NgayPhatHanh = p.NgayPhatHanh;
            pvm.TheLoai = bus.getTypeOfFilm(p.MS_TheLoai);
            pvm.NuocSX = bus.getCountryOfFilm(p.MS_NuocSX);
            pvm.DiemDanhGiaTrungBinh = bus.calculateAvgRank(p.MaSo);
            pvm.LuotDanhGia = bus.countRateTimes(p.MaSo);
            pvm.Banner = p.AnhBanner;
            pvm.strSort = strSort;
            pvm.currentPage = (int)page;
            pvm.isASC = isASC;

            pvm.MS_TheLoai = (int)p.MS_TheLoai;
            pvm.MS_NuocSX = (int)p.MS_NuocSX;       
            return pvm;
        }

        public List<PhimViewModels> searchFilm(String nameFilm)

        {
            List<PhimViewModels> result = new List<PhimViewModels>();

            List<Phim> lstFilms = bus.searchFilm(nameFilm);
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);
              
                result.Add(pvm);
            }
            return result;
        }


        public List<PhimViewModels> searchFilm4(String actor, String directer, String country, String type)
        {
            List<PhimViewModels> result = new List<PhimViewModels>();

            List<Phim> lstFilms = bus.searchFilm4(actor, directer, country, type);
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);
               
                result.Add(pvm);
            }
            return result;
        }

 

        internal void deletePhim(string codeFilm)
        {
            string temp = codeFilm;
            bus.deleteFilm(codeFilm);
        }

        internal bool addNewFilmd(Phim p)
        {
            return bus.addNewFilmd(p);
        }



        internal PhimViewModels getFilmByID(string codeFilm)
        {
          
            Phim p = bus.getFilmByID(codeFilm);

            PhimViewModels pvm = Phim2PhimViewModels(p);
         

            return pvm;
        }

        public PhimViewModels getFilmByMaso(int ms_phim)
        {
            Phim p = bus.getFilmByMaso(ms_phim);

            PhimViewModels pvm = Phim2PhimViewModels(p);

            return pvm;
        }

        internal bool EditFilm(Phim p)
        {
           
            return bus.editFilm(p);
        }

        internal int countPage()
        {
            return bus.countPage();
        }

        internal int getMaxIndexPage()
        {
            return Business.FilmBus.MAX_INDEX_PAGE;
        }



        internal int countPageSearch(List<PhimViewModels> searchResult)
        {
            int size = searchResult.Count;

            int page = size / getMaxIndexPage();
            if (size % FilmBus.MAX_PRODUCT_EACHPAGE != 0)
            {
                page++;
            }
            return page;
        }

        internal int countPageSearch(List<Phim> searchResult)
        {
            int size = searchResult.Count;

            int page = size / getMaxIndexPage();
            if (size % FilmBus.MAX_PRODUCT_EACHPAGE != 0)
            {
                page++;
            }
            return page;
        }


        internal List<PhimViewModels> findByGenre(string genreID, int? page, string strSort, bool sortDirection)
        {
            if (page == null)
                page = 1;
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.findByGenre( Int32.Parse(genreID), (int)page, strSort, sortDirection);
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p, page, strSort, sortDirection);

                result.Add(pvm);
            }

            return result;
        }

        internal List<Phim> findAllByGenry(string genreID)
        {

            return bus.findAllByGenre(Int32.Parse(genreID));

         
        }
        internal List<Phim> findAllByCountry(string countryID)
        {



            return bus.findAllByCountry(Int32.Parse(countryID));


        }
  
        internal List<PhimViewModels> findByCountry(String countryID, int? page, String strSort, bool sortDirection)
        {
            if (page == null)
                page = 1;
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.findByCountry(Int32.Parse(countryID), (int)page, strSort, sortDirection);
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p, page, strSort, sortDirection);

                result.Add(pvm);
            }

            return result;
        }



        internal int getMaxProductOnEachPage()
        {
            return bus.getMaxProductOnEachPage();
        }

        internal bool changeMaxProdcuctOnEachPage(int maxProductOnEachPage)
        {
            return bus.changeMaxProductOnEachPage(maxProductOnEachPage);
        }

        public List<PhimViewModels> filmMax()
        {
            List<PhimViewModels> result = new List<PhimViewModels>();

            List<Phim> lstFilms = bus.filmMax();
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);

                result.Add(pvm);
            }
            return result;
        }

        public List<PhimViewModels> findFilmNew()
        {
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.findFilmNew();
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);

                result.Add(pvm);
            }

            return result;
        }




   

        internal Dictionary<string, int> getStatisticPhimForGenre()
        {
            FilmBus t = new FilmBus();
            return t.statisticPhimForGenre();
        }

        internal Dictionary<string, int> getStatisticPhimForCountry()
        {
            FilmBus t = new FilmBus();
            return t.statisticPhimForCountry();
        }

        internal int[] getStatisticReview()
        {
            FilmBus t = new FilmBus();
            return t.statisticReview();
        }

        internal List<PhimViewModels> getNewFilms()
        {
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.getNewFilms();
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);

                result.Add(pvm);
            }
            return result;
        }

        internal List<PhimViewModels> getNhungBoPhimNoiBat()
        {
            List<PhimViewModels> result = new List<PhimViewModels>();
            List<Phim> lstFilms = bus.getTheMostFilmds();
            foreach (Phim p in lstFilms)
            {
                PhimViewModels pvm = Phim2PhimViewModels(p);

                result.Add(pvm);
            }
            return result;
        }
    }
}