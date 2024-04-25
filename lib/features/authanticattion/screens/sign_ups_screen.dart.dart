import 'package:flutter/material.dart';
import 'package:startup/config.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> emailFieldKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> nameFieldKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> passwordFieldKey =
      GlobalKey<FormFieldState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Let s Get Started!',
                fontSize: fontSize10(context) * 2.4,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: height10px(context) * 1,
              ),
              CustomText(
                text: 'Sign up with Social of fill the form to continue .',
                fontSize: fontSize10(context) * 1.4,
                color: Colors.grey,
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              CustomTextFormField(
                key: emailFieldKey,
                hint: "Email",
                keyboardtype: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                iconColor: Colors.white,
                iconBorderColor: Colors.black,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              CustomTextFormField(
                key: nameFieldKey,
                hint: "Name",
                keyboardtype: TextInputType.name,
                prefix: Icons.person_2_outlined,
                iconColor: Colors.white,
                iconBorderColor: Colors.black,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              CustomTextFormField(
                key: passwordFieldKey,
                hint: "Password",
                keyboardtype: TextInputType.visiblePassword,
                prefix: Icons.lock_outline,
                iconColor: Colors.white,
                iconBorderColor: Colors.black,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: height10px(context) * 1,
              ),
              CustomText(
                text:
                    'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
                fontSize: fontSize10(context) * 1.2,
                color: Colors.grey,
              ),
              SizedBox(
                height: height10px(context) * 4,
              ),
              Row(
                children: [
                  Container(
                    width: width10px(context) * 3,
                    height: height10px(context) * 3,
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
              SizedBox(
                height: height10px(context) * 8,
                width: width10px(context) * 3,
              ),
              SocialIconButtonRow(
                twitterIcon: FontAwesomeIcons.twitter,
                facebookIcon: Icons.facebook,
                appleIcon: Icons.apple,
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              Center(
                child: CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    } else {
                      print('Please fill in all fields!');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
