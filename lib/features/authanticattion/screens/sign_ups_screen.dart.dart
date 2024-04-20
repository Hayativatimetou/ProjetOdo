import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/Custom_text_form_field.dart';
import 'package:startup/features/authanticattion/widgets/SocialIconButton.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/screens/Login.dart';

class SignUpsScreen extends StatefulWidget {
  const SignUpsScreen({Key? key}) : super(key: key);

  @override
  State<SignUpsScreen> createState() => _SignUpsScreenState();
}

class _SignUpsScreenState extends State<SignUpsScreen> {
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
              text: 'Let s Get Started!',
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
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "Email",
              keyboardtype: TextInputType.emailAddress,
              prefix: Icons.email,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "Name",
              keyboardtype: TextInputType.name,
              prefix: Icons.person,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hint: "Password",
              keyboardtype: TextInputType
                  .visiblePassword, // Définir le type de clavier sur visiblePassword
              prefix: Icons.lock,
            ),
            const SizedBox(height: 10.0),
            CustomText(
              text:
                  'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
              fontSize: 12.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white),
                  ),
                ),
                const Expanded(
                  child: Text(
                    'By Signing up, you agree to the Terms of Service and Privacy Policy',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80.0,
              width: 30,
            ),
            SocialIconButtonRow(
              twitterIcon: FontAwesomeIcons.twitter,
              facebookIcon: Icons.facebook,
              appleIcon: Icons.apple,
            ),
            SizedBox(height: 20),
            Center(
              child: CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
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
