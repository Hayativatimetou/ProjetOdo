import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/Custom_text_form_field.dart';
import 'package:startup/features/authanticattion/widgets/SocialIconButton.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/widgets/RememberMeCheckbox.dart';
import 'package:startup/features/authanticattion/screens/test.dart';

class LoginS extends StatefulWidget {
  const LoginS({Key? key}) : super(key: key);

  @override
  State<LoginS> createState() => _LoginSState();
}

class _LoginSState extends State<LoginS> {
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
              text: 'Welcome',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomText(
              text: 'Sign up with Social of fill the form to continue .',
              fontSize: 14.0,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 60.0,
              width: 10,
            ),
            Container(
              height: 1.0,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "yessie",
              keyboardtype: TextInputType.name,
              prefix: Icons.person,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "........",
              keyboardtype: TextInputType.visiblePassword,
              prefix: Icons.lock,
            ),
            const Row(
              children: [
                Text(
                  'Incorrect password',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 20),
            RememberMeCheckbox(
              value: true,
              onChanged: (bool newValue) {},
            ),
            const SizedBox(
              height: 100,
            ),
            SocialIconButtonRow(
              twitterIcon: FontAwesomeIcons.twitter,
              facebookIcon: Icons.facebook,
              appleIcon: Icons.apple,
            ),
            SizedBox(height: 20),
            Center(
              child: CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test()),
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
