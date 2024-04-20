import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/Custom_text_form_field.dart';
import 'package:startup/features/authanticattion/widgets/SocialIconButton.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/widgets/RememberMeCheckbox.dart';
import 'package:startup/features/authanticattion/screens/LoginS.dart';
import 'package:startup/features/Category/screens/categ.dart';
//import 'package:startup/features/authanticattion/screens/sign_ups_screen.dart.dart';

class Change extends StatefulWidget {
  const Change({Key? key}) : super(key: key);

  @override
  State<Change> createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
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
              text: 'Change your password ',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text: 'Please entre your pssword',
              fontSize: 14.0,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10.0,
              width: 10,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "New Pasword",
              keyboardtype: TextInputType.visiblePassword,
              prefix: Icons.lock,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text:
                  'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
              fontSize: 12.0,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "Confirm Password ",
              keyboardtype: TextInputType.visiblePassword,
              prefix: Icons.lock,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text:
                  'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
              fontSize: 12.0,
              color: Colors.grey,
            ),
            SizedBox(height: 80),
            Center(
              child: CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Categ()),
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
