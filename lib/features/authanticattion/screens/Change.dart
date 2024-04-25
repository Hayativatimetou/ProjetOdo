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
import 'package:startup/config.dart';
import 'package:startup/features/main_screen.dart';
// import 'package:startup/features/Category/screens/categ.dart';
//import 'package:startup/features/authanticattion/screens/sign_ups_screen.dart.dart';

class Change extends StatefulWidget {
  const Change({Key? key}) : super(key: key);

  @override
  State<Change> createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                text: 'Change your password ',
                fontSize: fontSize10(context) * 2.4,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: height10px(context) * 2,
              ),
              CustomText(
                text: 'Please entre your pssword',
                fontSize: fontSize10(context) * 1.4,
                color: Colors.grey,
              ),
              SizedBox(
                height: height10px(context) * 1,
                width: width10px(context) * 1,
              ),
              SizedBox(height: height10px(context) * 2),
              CustomTextFormField(
                controller: _passwordController,
                hint: "New Pasword",
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
                height: height10px(context) * 1,
              ),
              CustomTextFormField(
                hint: "Confirm Password ",
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
                height: height10px(context) * 8,
              ),
              Center(
                child: CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Categ()),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomeScreen()),
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
