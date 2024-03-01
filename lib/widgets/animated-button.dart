import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    required this.zoomOutAnimation,
    required this.squeezeAnimation,
    required this.animationController,
    required this.buttonGrowColorAnimation,
    required this.textColor,
    required this.textButton,
    required this.buttonColor,
  });

  final Color buttonColor;
  final String textButton;
  final Color textColor;
  final Animation zoomOutAnimation;
  final Animation squeezeAnimation;
  final Color buttonGrowColorAnimation;
  final AnimationController animationController;

  Future<Null> _playAnimation(BuildContext context) async {
    try {
      await animationController.forward().then((_) async {
        await Future.delayed(Duration(milliseconds: 500)); // Add a delay before reverse animation
        if (EditableText.debugDeterministicCursor) {
          // Check if the widget is still mounted before reverse animation
          await animationController.reverse().then((_) {
            // Animation is completed, navigate to the home page or signup screen
            Navigator.pushNamed(context, '/home'); // Replace '/home' with your home screen route
            // Navigator.pushNamed(context, '/signup'); // Replace '/signup' with your signup screen route
          });
        }
      });
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          _playAnimation(context);
        },
        child: Hero(
          tag: "fade",
          child: Container(
            width: zoomOutAnimation.value == 70 ? squeezeAnimation.value : zoomOutAnimation.value,
            height: zoomOutAnimation.value == 70 ? 60.0 : zoomOutAnimation.value,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: zoomOutAnimation.value == 70 ? buttonColor : buttonGrowColorAnimation,
              borderRadius: BorderRadius.circular(zoomOutAnimation.value < 400 ? 30.0 : 0.0),
            ),
            child: squeezeAnimation.value > 75
                ? Text(
                    textButton,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3,
                    ),
                  )
                : zoomOutAnimation.value < 300
                    ? CircularProgressIndicator(
                        value: null,
                        strokeWidth: 1.0,
                        valueColor: AlwaysStoppedAnimation<Color>(textColor),
                      )
                    : null,
          ),
        ),
      ),
    );
  }
}
