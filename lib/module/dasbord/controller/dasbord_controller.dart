import 'package:clone_gojek/core.dart';
import 'package:clone_gojek/module/dasbord/widget/promo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/chat.dart';
import '../widget/pesanan.dart';

class DasbordController extends GetxController {
  DasbordView? view;

  List menuAtas = [
    {
      'id': 1,
      'product_name': 'Beranda',
    },
    {
      'id': 2,
      'product_name': 'Promo',
      'view': const Promo(),
    },
    {
      'id': 3,
      'product_name': 'Pesanan',
      'view': const Pesanan(),
    },
    {
      'id': 4,
      'product_name': 'Chat',
      'view': const Chat(),
    },
  ];

  int selectedIndex = 0;
  Widget? currentView;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    currentView = menuAtas[newIndex]['view'];
    update();
  }
}
