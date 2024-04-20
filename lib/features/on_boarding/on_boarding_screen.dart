import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:startup/features/on_boarding/widgets/slide_Item.dart';

import '../../config.dart';
import 'controllers/on_boarding_controller.dart';
import 'models/slider.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final OnBoardingController controller = Get.put(OnBoardingController());

  autoScroll() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < sliderList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void initState() {
    //autoScroll();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  topSliderLayout() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemCount: sliderList.length,
            itemBuilder: (ctx, i) => SlideItem(i),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: fullHeight(context) * 0.04,
                      horizontal: fullWidth(context) * 0.07),
                  child: MaterialButton(
                      onPressed: () {
                        if (_currentPage == sliderList.length - 1) {
                          print("hi");
                          controller.onDone();
                        } else {
                          setState(() {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                            _currentPage++;
                          });
                        }
                      },
                      child: Text(
                        _currentPage == sliderList.length - 1
                            ? "commencer".tr
                            : "continuer".tr,
                      ))),
              SizedBox(height: fullHeight(context) * 0.02)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: sliderList[_currentPage].color,
        body: topSliderLayout(),
      ),
    );
  }
}
