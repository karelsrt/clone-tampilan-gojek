import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;
  List menu = [
    {
      'id': 1,
      'icon': "assets/icon/icon_motor.png",
      'name': "GoRide",
      'colour': const Color(0xff00AA12)
    },
    {
      'id': 2,
      'icon': "assets/icon/icon_mobil.png",
      'name': "GoCar",
      'colour': const Color(0xff00AA12)
    },
    {
      'id': 3,
      'icon': "assets/icon/icon_makan.png",
      'name': "GoFood",
      'colour': const Color(0xffED2739)
    },
    {
      'id': 4,
      'icon': "assets/icon/icon_box.png",
      'name': "GoSend",
      'colour': const Color(0xff00AA12)
    },
    {
      'id': 5,
      'icon': "assets/icon/icon_troly.png",
      'name': "GoMart",
      'colour': const Color(0xffED2739)
    },
    {
      'id': 6,
      'icon': "assets/icon/icon_hp.png",
      'name': "GoPulsa",
      'colour': const Color(0xff00AED5)
    },
    {
      'id': 7,
      'icon': "assets/icon/icon_club.png",
      'name': "GoClub",
      'colour': const Color(0xffffffff),
      'warna2': const Color(0xff87027B)
    },
    {
      'id': 8,
      'icon': "assets/icon/icon_lain.png",
      'name': "Lainnya",
      'colour': const Color(0xffEDEDED),
      'warna2': const Color(0xff4A4A4A)
    },
  ];

  List news = [
    {
      'id': 1,
      'gambar': "assets/gambar/promo1.png",
      'keterangan': "Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia",
    },
    {
      'id': 2,
      'gambar': "assets/gambar/promo2.png",
      'keterangan': "Sambungin Akun ke Tokopedia, Banyakin Untung",
    },
    {
      'id': 3,
      'gambar': "assets/gambar/promo3.png",
      'keterangan': "Promo Belanja Online 10.10: Cashback hingga Rp100.000",
    },
  ];

  int selecetedCaragoryIndex = 0;
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
