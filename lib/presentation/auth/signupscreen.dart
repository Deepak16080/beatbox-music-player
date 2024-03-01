import 'package:beatbox/Constant/app_color.dart';
import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/widgets/animated-button.dart';
import 'package:beatbox/widgets/input-field-area.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _squeezeAnimation, _zoomOutAnimation;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                        InputFieldArea(
                          hint: " Confirm Password",
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
        Navigator.pushNamed(context, AppRoutes.login);
        print("Next Screen doesn't exist");
      }
    });
  }
}
