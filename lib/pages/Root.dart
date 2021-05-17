import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  final List children;
  final int index;

  const Root({Key key, this.index, this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: children[index]);
  }
}
