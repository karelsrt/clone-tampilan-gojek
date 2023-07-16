import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import '../view/coba_view.dart';

class CobaController extends GetxController {
  CobaView? view;

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
