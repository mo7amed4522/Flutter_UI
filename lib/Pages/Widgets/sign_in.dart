// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, unused_element, deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Thems/thems.dart';

class Sign_in_Page extends StatelessWidget {
  const Sign_in_Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23.0),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  bottom: 50,
                ),
                child: Text(
                  'Log IN',
                  style: TextStyle(
                    fontSize: 25.0,
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
                  )),
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
                  )),
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
                                'LOG IN',
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
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'WorkSansMedium'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.white10,
                            Colors.white,
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(1.0, 1.0),
                          stops: <double>[0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      width: 100.0,
                      height: 1.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'WorkSansMedium',
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.white,
                            Colors.white10,
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(1.0, 1.0),
                          stops: <double>[0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      width: 100.0,
                      height: 1.0,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.facebookF,
                          color: Color(0xFF0084ff),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.google,
                          color: Color(0xFF0084ff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
