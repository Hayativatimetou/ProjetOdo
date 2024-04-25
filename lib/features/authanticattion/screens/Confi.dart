import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:flutter/services.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:startup/features/authanticattion/screens/Change.dart';
import 'package:startup/config.dart';

class Config extends StatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 300), () {
      FocusScope.of(context).requestFocus(FocusNode());
      SystemChannels.textInput.invokeMethod('TextInput.show');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        onMorePressed: () {},
        onClosePressed: () {},
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Phone Verification',
              fontSize: fontSize10(context) * 2.5,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            CustomText(
              text: 'Please enter the 4-digit code sent to you at',
              fontSize: fontSize10(context) * 1.5,
              color: Colors.black,
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            CustomText(
              text: '+61 44 535 235',
              fontSize: fontSize10(context) * 1.5,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            CustomText(
              text: 'Resend Code',
              fontSize: fontSize10(context) * 1.5,
              color: Colors.grey,
            ),
            SizedBox(height: height10px(context) * 2),
            Row(
              children: <Widget>[
                SizedBox(
                  height: height10px(context) * 2,
                  width: width10px(context) * 2,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: width10px(context) * 6,
                    height: height10px(context) * 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: fontSize10(context) * 2,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width10px(context) * 0.5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: width10px(context) * 6,
                    height: height10px(context) * 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: fontSize10(context) * 2,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width10px(context) * 0.5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: width10px(context) * 6,
                    height: height10px(context) * 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: fontSize10(context) * 2,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width10px(context) * 0.5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: width10px(context) * 6,
                    height: height10px(context) * 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: fontSize10(context) * 2,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width10px(context) * 0.5),
              ],
            ),
            SizedBox(
              height: height10px(context) * 2,
            ),
            Center(
              child: CustomButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Change()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
