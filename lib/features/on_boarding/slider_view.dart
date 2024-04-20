import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:startup/features/on_boarding/widgets/slide_Item.dart';
import 'package:startup/features/on_boarding/widgets/slide_dots.dart';


import '../../config.dart';
import 'controllers/on_boarding_controller.dart';
import 'models/slider.dart';

class SliderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final OnBoardingController controller = Get.put(OnBoardingController());

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget topSliderLayout() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: sliderList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                if (_currentPage == 2)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () => controller.onDone(),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 15.0, bottom: 15.0),
                        child: GestureDetector(
                          child: Text(
                            "Let's go",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fullWidth(context) * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (_currentPage < 2)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_currentPage < 2) {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                            _currentPage++;
                          }
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 15.0, bottom: 15.0),
                        child: GestureDetector(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: fullWidth(context) * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (_currentPage > 0)
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_currentPage > 0) {
                            _pageController.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                            _currentPage--;
                          }
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15.0, bottom: 15.0),
                        child: Text(
                          "Previous",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: fullWidth(context) * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: height10px(context) * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => topSliderLayout();
}
