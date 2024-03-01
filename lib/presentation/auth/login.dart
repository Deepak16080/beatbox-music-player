import 'package:beatbox/Constant/app_color.dart';
import 'package:beatbox/routes/app_routes.dart';
import 'package:beatbox/widgets/animated-button.dart';
import 'package:beatbox/widgets/input-field-area.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _squeezeAnimation, _zoomOutAnimation;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late AnimationController animationController1;
  late Animation squeezeAnimation1, zoomOutAnimation1;
  TextEditingController emailController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    animationInitState();
  }

  @override
  Widget build(BuildContext context) {
    var buttonGrowColorAnimation = backgroundColor;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "assets/background.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _zoomOutAnimation.value > 400
                  ? Container()
                  : Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                        ),
                        Image.asset(
                          "assets/icons/music.png",
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InputFieldArea(
                          hint: "Username",
                          obscure: false,
                          icon: Icons.person,
                          emailcontroller: emailController,
                        ),
                        InputFieldArea(
                          hint: "Password",
                          obscure: true,
                          icon: Icons.lock_open,
                          Passwordcontroller: passwordController,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
              AnimatedButton(
                animationController: _animationController,
                zoomOutAnimation: _zoomOutAnimation,
                squeezeAnimation: _squeezeAnimation,
                buttonGrowColorAnimation: buttonGrowColorAnimation,
                buttonColor: const Color.fromRGBO(210, 85, 81, 1),
                textButton: 'Sign in',
                textColor: Colors.white,
              ),
              _zoomOutAnimation.value > 400
                  ? Container()
                  : Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
              AnimatedButton(
                animationController: _animationController,
                zoomOutAnimation: _zoomOutAnimation,
                squeezeAnimation: _squeezeAnimation,
                buttonGrowColorAnimation: buttonGrowColorAnimation,
                buttonColor: const Color.fromRGBO(210, 85, 81, 1),
                textButton: 'Sign up',
                textColor: Colors.white,
              ),
              _zoomOutAnimation.value > 400
                  ? Container()
                  : Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
              Center(child: Text('OR')),
              SizedBox(height: 10),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Login with ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            print("Phone Number tapped");
                          },
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void animationInitState() {
    super.initState();
    _animationController = new AnimationController(duration: new Duration(seconds: 3), vsync: this);
    _squeezeAnimation = new Tween(
      begin: 320.0,
      end: 70.0,
    ).animate(new CurvedAnimation(parent: _animationController, curve: new Interval(0.0, 0.250)));
    _squeezeAnimation.addListener(() {
      setState(() {});
      print(_squeezeAnimation.value);
    });

    _zoomOutAnimation = new Tween(
      begin: 70.0,
      end: 1000.0,
    ).animate(new CurvedAnimation(
      parent: _animationController,
      curve: new Interval(
        0.550,
        0.900,
        curve: Curves.bounceOut,
      ),
    ));
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _animationController.dispose();
        Navigator.pushNamed(context, AppRoutes.SignUp);
      }
    });
  }
}
