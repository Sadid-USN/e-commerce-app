import 'package:e_encommerce/core/constant/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  nextPage();

  onPageChanged(int index);
}

class ImplementController extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBoardingModelist.length - 1) {
      Get.toNamed(AppRouteNames.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  skip() {
    currentPage = 4;

    if (currentPage > onBoardingModelist.length - 1) {
      Get.toNamed(AppRouteNames.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  onPageChanged(index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
