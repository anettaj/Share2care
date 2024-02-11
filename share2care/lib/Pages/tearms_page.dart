import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:share2care/Components/sizing_components.dart';
import 'package:share2care/Pages/Register.dart';
class TearmsPage extends StatefulWidget {
  @override
  State<TearmsPage> createState() => _TearmsPageState();
}

class _TearmsPageState extends State<TearmsPage> {
  final List<String> str = [
    "Use Share2Care for lawful and responsible purposes at all times.",
    "Do not engage in activities that compromise the security, functionality, or integrity of the platform.",
    "When listing items for donation, provide accurate and truthful information about the items.",
    "Communicate openly and honestly with other users regarding donations and transactions.",
    "The collection, use, and protection of your data are subject to the terms outlined in our Privacy Policy.",
    "Share2Care is not liable for any direct, indirect, incidental, or consequential damages that may arise from your use of the platform.",
    "Accounts found to be in violation of these Terms and Conditions may be suspended or terminated at our discretion.",
    "We reserve the right to update, modify, or amend these Terms and Conditions as needed, with notifications of significant changes.",
    "If you have any questions or concerns regarding these Terms and Conditions, please contact us at support@share2care.in.",
  ];
  bool? isChecked = false;
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
        child: Container(
          margin: EdgeInsets.only(left: 10.0,right: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20,top: 55.0),
                child: Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Color(0xFF4A465D),
                    fontSize: screenHeight * 0.060,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:20,top: 20.0,bottom: 15.0),
                child: Text('Use of Share2Care constitutes acceptance of these Terms.',
                  style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: screenHeight*0.016,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: str
                    .map((bulletPoint) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:20,bottom: 10.0),
                      child: Text(
                        "• ",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: screenHeight * 0.02,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          bulletPoint,
                          style: TextStyle(
                            color: Color(0xFFA19E9E),
                            fontSize: screenHeight * 0.013,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.transparent; // Set the fill color to transparent when the checkbox is selected
                      }
                      return null; // Use the default fill color for other states
                    }),
                    checkColor: Colors.white,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue, // Set the border color here
                        width: 2.0, // Set the border width
                      ),
                      borderRadius: BorderRadius.circular(4.0), // Adjust the border radius as needed
                    ),
                  ),
                  Container(
                    width: screenWidth*0.81,
                    child: Text('I agree to the Terms and Conditions of Sher2Care',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
                ],
              ),
        
              SizedBox(
                height:screenHeight *0.025,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()), // Replace TearmsPage() with the actual name of your terms page
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xff37A22E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                ),
                child: const Text('Agree',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(
                height:screenHeight *0.03,
              ),
              Text(
                "© Share2Care. All rights reserved.",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff4a465d),
                  height: 14/12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
