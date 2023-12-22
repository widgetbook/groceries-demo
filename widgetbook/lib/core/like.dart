import 'package:flutter/material.dart';

import '../addons/animation_addon.dart';

class AnimatedBoxWidget extends StatefulWidget {
  const AnimatedBoxWidget({super.key});

  @override
  AnimatedBoxWidgetState createState() => AnimatedBoxWidgetState();
}

class AnimatedBoxWidgetState extends State<AnimatedBoxWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutCirc,
      ),
    );
    sizeAnimation = Tween<double>(begin: 50, end: 200).animate(controller);

    controller.forward();

    AnimationTracker.addAnimation('myAnimation', controller);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SizeTransition(
        sizeFactor: sizeAnimation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Container(
          width: sizeAnimation.value,
          height: sizeAnimation.value,
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
