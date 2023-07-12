import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;
  List menu = [
    {
      'id': 1,
      'icon': Icons.favorite,
      'name': "GoRide",
    },
    {
      'id': 2,
      'icon': Icons.car_crash,
      'name': "GoCar",
    },
  ];
}
