// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Thems/thems.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 1,
                bottom: 10,
                left: 30,
              ),
              child: Text(
                'Create a\nNew Account',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 1,
                left: 30,
              ),
              child: Text(
                'For the best experience with Pharisto',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 25.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' Username',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 2.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: TextFormField(
                      // controller: bodyController,
                      keyboardType: TextInputType.emailAddress,
                      // enabled: false,
                      keyboardAppearance: Brightness.dark,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        suffixIcon: Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 25.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' E-Mail',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 2.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: TextFormField(
                      // controller: bodyController,
                      keyboardType: TextInputType.emailAddress,
                      // enabled: false,
                      keyboardAppearance: Brightness.dark,
                      decoration: const InputDecoration(
                        hintText: "E - Mail",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ' Password',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: TextFormField(
                      // controller: bodyController,
                      keyboardType: TextInputType.text,
                      // enabled: false,
                      keyboardAppearance: Brightness.light,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white54,
                        ),
                        //iconColor: Colors.white,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(
                milliseconds: 500,
              ),
              opacity: 0.99,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  bottom: 16,
                  right: 30,
                  top: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: DesignCourseAppTheme.nearlyBlue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color:
                                  DesignCourseAppTheme.nearlyBlue.withOpacity(
                                0.5,
                              ),
                              offset: const Offset(
                                1.1,
                                1.1,
                              ),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                //   _controller.defaultLArgeSize * textScale,
                                letterSpacing: 0.0,
                                color: DesignCourseAppTheme.nearlyWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
