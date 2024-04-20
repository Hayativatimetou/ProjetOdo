import 'package:flutter/material.dart';
import 'package:startup/features/authanticattion/widgets/Custom_text_form_field.dart';
import 'package:startup/features/authanticattion/widgets/SocialIconButton.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/widgets/RememberMeCheckbox.dart';
import 'package:startup/features/authanticattion/screens/LoginS.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              height: 1.0, // Hauteur de la ligne
              color: Colors.grey, // Couleur de la ligne
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
            SizedBox(height: 20.0),
            RememberMeCheckbox(
              value: true,
              onChanged: (bool newValue) {},
            ),
            const SizedBox(
              height: 100.0,
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
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginS()),
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
