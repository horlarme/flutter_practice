import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_app/widgets/Button.dart';

class HomeScreen extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                flex: 3,
                child: Image(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image_1.png'),
                )),
            Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 42, right: 42, bottom: 52),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Modern Geometric Furnitures',
                          style: TextStyle(
                              color: Color.fromRGBO(50, 40, 83, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 57),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Text(
                          'Welcome to Geometric home decoration product app. Let’s Decorate your home with modern geometric products.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(50, 40, 83, 1),
                          ),
                        ),
                        SizedBox(height: 40),
                        Button('Get Started', navigateToNextScreen)
                      ],
                    ),
                  ),
                ),
                flex: 2),
          ],
        ));
  }

  navigateToNextScreen() {
    print('Navigating to next screen');
     Navigator.push(context, '/settings');
  }
}
