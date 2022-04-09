// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types, unused_element

import 'package:flutter/material.dart';
import '../utils/Utils.dart';
import 'Widgets/sign_in.dart';
import 'Widgets/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(50, 73, 82, 1),
                  Color.fromRGBO(50, 73, 82, 1),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: <double>[0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Container(
                    height:
                        MediaQuery.of(context).size.height > 800 ? 191.0 : 150,
                    // width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/1.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _buildMenuBar(context),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (int i) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (i == 0) {
                        setState(() {
                          right = Colors.white;
                          left = Colors.black;
                        });
                      } else if (i == 1) {
                        setState(() {
                          right = Colors.black;
                          left = Colors.white;
                        });
                      }
                    },
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: const Sign_in_Page(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: const SignUp(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: const BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: BubbleIndicatorPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                ),
                onPressed: _onSignInButtonPress,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: left,
                    fontSize: 16.0,
                    fontFamily: 'WorkSansSemiBold',
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                ),
                onPressed: _onSignUpButtonPress,
                child: Text(
                  'Sign UP',
                  style: TextStyle(
                    color: right,
                    fontSize: 16.0,
                    fontFamily: 'WorkSansSemiBold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 400), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController?.animateToPage(1,
        duration: const Duration(milliseconds: 400), curve: Curves.decelerate);
  }
}
