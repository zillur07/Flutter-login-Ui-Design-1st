import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundColor = Colors.white;
  var _hadingColor = Color(0xFFB56009F);
  @override
  Widget build(BuildContext context) {
    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _hadingColor = Color(0xFFB56009F);
        break;

      case 1:
        _backgroundColor = Color(0xFFBFD7A5D);
        _hadingColor = Colors.white;
        break;

      case 2:
        _backgroundColor = Color(0xFFBFD7A5D);
        _hadingColor = Colors.white;
        break;
    }
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 3000),
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Text(
                    'Learn Free',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: _hadingColor,
                      fontSize: 38,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'We make learning easy. Join Tvac Studio to learn flutter for free on YouTube.',
                    style: TextStyle(
                      fontSize: 16,
                      color: _hadingColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Image.asset("assets/images/splash_bg.png"),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // if (_pageState != 0) {
                  //   _pageState = 0;
                  // } else {
                  //   _pageState = 1;
                  // }
                  _pageState != 0 ? _pageState = 0 : _pageState = 1;
                });
              },
              child: Container(
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFB56009F),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
