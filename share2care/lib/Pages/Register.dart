import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:share2care/Pages/Login.dart';

import '../Components/Register_Login/Copyright.dart';
import '../Components/Register_Login/GoogleButton.dart';
import '../Components/Register_Login/OR_Button.dart';
import '../Components/Register_Login/Reg_heading.dart';
import '../Components/Register_Login/Reg_subtitle.dart';
import '../Components/Register_Login/Reg_textfield.dart';
import '../Components/sizing_components.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late FocusNode _nameFocus;
  late FocusNode _contactFocus;
  late FocusNode _emailFocus;
  late FocusNode _pswdFocus;
  late FocusNode _confirmPswdFocus;
  Color _namecolor = Color(0xff14141B);
  Color _emailcolor = Color(0xff14141B);
  Color _contactcolor = Color(0xff14141B);
  Color _pswdcolor = Color(0xff14141B);
  Color _confirmpswdcolor = Color(0xff14141B);
  Color _borderColor = Color(0xff14141B);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  TextEditingController confirmPswdController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  void initState() {
    _nameFocus = FocusNode();
    _contactFocus = FocusNode();
    _emailFocus = FocusNode();
    _pswdFocus = FocusNode();
    _confirmPswdFocus = FocusNode();

    _nameFocus.addListener(_updateColor);
    _contactFocus.addListener(_updateColor);
    _emailFocus.addListener(_updateColor);
    _pswdFocus.addListener(_updateColor);
    _confirmPswdFocus.addListener(_updateColor);

    super.initState();
  }

  void _updateColor() {
    setState(() {
      _namecolor = _nameFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
      _contactcolor = _contactFocus.hasFocus  ? Color(0xff37A22E) : Color(0xff14141B);
      _emailcolor =_emailFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
      _pswdcolor = _pswdFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
      _confirmpswdcolor = _confirmPswdFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
    });
  }

  @override
  void dispose() {
    _nameFocus.dispose();
    _contactFocus.dispose();
    _emailFocus.dispose();
    _pswdFocus.dispose();
    _confirmPswdFocus.dispose();
    nameController.dispose();
    emailController.dispose();
    pswdController.dispose();
    confirmPswdController.dispose();
    contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Sizing sizing = Sizing(context);
    double screenHeight = sizing.setHeight();
    double screenWidth = sizing.setWidth();

    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF1F1E2C),
          Color(0xFF030303),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Reg_heading(screenHeight: screenHeight, ftitle: 'Start Sharing', Stitle: 'Create Your Account',),
            SizedBox(height: 25),
            Container(
              height: screenHeight * 0.79,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xff14141B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(65),
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(left: 60, top: 40, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Reg_subtitle(Name: 'Full Name'),
                      Reg_textfield(
                        textFieldFocus: _nameFocus,
                        color: _namecolor,
                        borderColor: _borderColor,
                        myController: nameController,
                        nextFocusNode: _contactFocus,
                      ),
                      Reg_subtitle(Name: 'Contact Number'),
                      Reg_textfield(
                        textFieldFocus: _contactFocus,
                        color: _contactcolor,
                        borderColor: _borderColor,
                        myController: contactController,
                        nextFocusNode: _emailFocus,
                      ),
                      Reg_subtitle(Name: 'Email'),
                      Reg_textfield(
                        textFieldFocus: _emailFocus,
                        color: _emailcolor,
                        borderColor: _borderColor,
                        myController: emailController,
                        nextFocusNode: _pswdFocus,
                      ),
                      Reg_subtitle(Name: 'Password'),
                      Reg_textfield(
                        textFieldFocus: _pswdFocus,
                        color: _pswdcolor,
                        borderColor: _borderColor,
                        myController: pswdController,
                        nextFocusNode: _confirmPswdFocus,
                      ),
                      Reg_subtitle(Name: 'Confirm Password'),
                      Reg_textfield(
                        textFieldFocus: _confirmPswdFocus,
                        color: _confirmpswdcolor,
                        borderColor: _borderColor,
                        myController: confirmPswdController,
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()), // Replace TearmsPage() with the actual name of your terms page
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff37A22E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                            ),
                          ),
                          child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 20),
                      OR_Button(screenWidth: screenWidth),
                      SizedBox(height: 15),
                      GoogleButton(),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()), // Navigate to the login screen
                            );
                          },
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Copyright(screenHeight: screenHeight),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

