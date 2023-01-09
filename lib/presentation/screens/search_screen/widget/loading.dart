import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _duration = const Duration(seconds: 4);
  final double _animationWidth = 200;
  final double _animationHeight = 200;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _duration,
    )
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _controller.repeat();
          }
        },
      )
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'animations/load-animation.json',
      width: _animationWidth,
      height: _animationHeight,
      controller: _controller,
      repeat: true,
      onLoaded: (_) {
        _controller.forward();
      },
    );
  }
}
