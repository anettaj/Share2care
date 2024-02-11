import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../Components/Register/Reg_heading.dart';
import '../Components/Register/Reg_subtitle.dart';
import '../Components/Register/Reg_textfield.dart';
import '../Components/sizing_components.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late FocusNode _emailFocus;
  late FocusNode _pswdFocus;
  Color _emailcolor = Color(0xff14141B);
  Color _pswdcolor = Color(0xff14141B);
  Color _borderColor = Color(0xff14141B);
  TextEditingController emailController = TextEditingController();
  TextEditingController pswdController = TextEditingController();
  @override
  void initState() {
    _emailFocus = FocusNode();
    _pswdFocus = FocusNode();
    _emailFocus.addListener(_updateColor);
    _pswdFocus.addListener(_updateColor);

    super.initState();
  }

  void _updateColor() {
    setState(() {
      _emailcolor =_emailFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
      _pswdcolor = _pswdFocus.hasFocus ? Color(0xff37A22E) : Color(0xff14141B);
         });
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _pswdFocus.dispose();
    emailController.dispose();
    pswdController.dispose();
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
            Reg_heading(screenHeight: screenHeight, ftitle: 'Welcome Back', Stitle: 'to Share2Care',),
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
                  padding: EdgeInsets.only(left: 60, top: 80, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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

                      ),

                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),                             );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff37A22E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                            ),
                          ),
                          child: const Text('Log In', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.3,
                            child: Divider(
                              height: 1,
                              color: Color(0xff4A465D),
                            ),
                          ),
                          Text(
                            ' OR ',
                            style: TextStyle(color: Color(0xff4A465D)),
                          ),
                          SizedBox(
                            width: screenWidth * 0.3,
                            child: Divider(
                              height: 1,
                              color: Color(0xff4A465D),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          // Handle Google sign-in here
                        },
                        child: Container(
                          padding: EdgeInsets.all(1.0),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/google icon.png',
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text('Continue with Google'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'New to Share2Care ?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: screenHeight * 0.1,
                          child: Text(
                            'Share2Care is committed to protecting your privacy and data. By joining, you become a part of a community that shares and cares.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xff4A465D)),
                          ),
                        ),
                      ),
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
