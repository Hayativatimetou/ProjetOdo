import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/app_constants.dart';
import 'package:startup/features/on_boarding/widgets/slide_dots.dart';

import '../../../config.dart';
import '../controllers/on_boarding_controller.dart';
import '../models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  final OnBoardingController controller = Get.put(OnBoardingController());
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: fullHeight(context) * 0.05),
          if (index != 2)
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => controller.onDone(),
                child: Text(
                  "Skip".tr,
                  style: TextStyle(color: AppConstants.primaryColor),
                ),
              ),
            ),
          SizedBox(height: fullHeight(context) * 0.06),
          Container(
            height: fullHeight(context) * 0.4,
            width: fullWidth(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(sliderList[index].imageUrl))),
          ),
          //Dots
          Container(
            alignment: AlignmentDirectional.bottomCenter,
            margin: EdgeInsets.only(bottom: height10px(context) * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < sliderList.length; i++)
                  if (i == index) SlideDots(true) else SlideDots(false)
              ],
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.03), //Dots

          Text(
            sliderList[index].title,
            style: TextStyle(
              color: AppConstants.primaryColor,
              fontSize: fontSize10(context) * 2.2,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.02),
          SizedBox(
            width: fullWidth(context) * 0.6,
            child: Text(
              sliderList[index].body,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize10(context) * 1.2,
              ),
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.05),
        ],
      ),
    );
  }
}
