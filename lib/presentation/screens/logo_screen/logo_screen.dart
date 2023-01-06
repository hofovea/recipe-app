import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/presentation/screens/search_screen/search_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final int _duration = 3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: _duration,
      ),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenScreen(),
              ),
            );
          }
        },
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/recipes-book-animation.json',
            controller: _controller, repeat: true, onLoaded: (_) {
          _controller.forward();
        }),
      ),
    );
  }
}
