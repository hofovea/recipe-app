import 'package:flutter/material.dart';

class InitialSearchBackground extends StatelessWidget {
  final double _iconSize = 64;

  const InitialSearchBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.search,
          size: _iconSize,
        ),
        Text(
          'Start searching',
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
