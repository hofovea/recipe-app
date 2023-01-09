import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';

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
          AppLocalizations.of(context)!.translate('nothingFound')!,
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
