import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:flutter/services.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:startup/features/authanticattion/screens/Change.dart';

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
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text: 'Please enter the 4-digit code sent to you at',
              fontSize: 14.0,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text: '+61 44 535 235',
              fontSize: 14.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text: 'Resend Code',
              fontSize: 14.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                  width: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
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
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
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
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
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
                const SizedBox(width: 30),
              ],
            ),
            SizedBox(height: 20),
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
