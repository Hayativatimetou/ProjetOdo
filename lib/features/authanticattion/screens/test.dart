import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:startup/config.dart';

import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:startup/features/authanticattion/screens/Confi.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController _phoneController = TextEditingController();

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
              text: 'Forgot your password?',
              fontSize: fontSize10(context) * 2.4,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            CustomText(
              text:
                  'If you need help resetting your password we can help by sending you a link to reset it.',
              fontSize: fontSize10(context) * 1.4,
              color: Colors.grey,
            ),
            SizedBox(
              height: height10px(context) * 2,
            ),
            IntlPhoneField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              initialCountryCode: 'AU',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
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
                    MaterialPageRoute(builder: (context) => Config()),
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
