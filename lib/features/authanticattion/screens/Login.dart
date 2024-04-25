import 'package:flutter/material.dart';
import 'package:startup/config.dart';
import 'package:startup/features/authanticattion/screens/LoginS.dart';
import 'package:startup/features/authanticattion/widgets/Custom_text_form_field.dart';
import 'package:startup/features/authanticattion/widgets/SocialIconButton.dart';
import 'package:startup/features/authanticattion/widgets/CustomButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/features/authanticattion/widgets/CustomAppBar.dart';
import 'package:startup/features/authanticattion/widgets/CustomText.dart';
import 'package:startup/features/authanticattion/widgets/RememberMeCheckbox.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                text: 'Welcome',
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
                height: height10px(context) * 6,
                width: width10px(context) * 1,
              ),
              Container(
                height: height10px(context) * 0.1,
                color: Colors.grey,
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              CustomTextFormField(
                controller: _nameController,
                hint: "yessie",
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
                controller: _passwordController,
                hint: "........",
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
                height: height10px(context) * 2,
              ),
              RememberMeCheckbox(
                value: true,
                onChanged: (bool newValue) {},
              ),
              SizedBox(
                height: height10px(context) * 10,
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
                  text: 'Sign In',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginS()),
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
