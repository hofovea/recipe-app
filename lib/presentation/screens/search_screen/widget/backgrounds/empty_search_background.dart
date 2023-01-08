import 'package:flutter/material.dart';

class EmptySearchBackground extends StatelessWidget {
  final double _iconSize = 64;

  const EmptySearchBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.close_rounded,
          size: _iconSize,
        ),
        Text(
          'Nothing found',
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
