import 'package:flutter/material.dart';
import 'package:split_it/modules/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDolarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDolarWidget({Key? key, required this.type}) : super(key: key);

  String get pathImage =>
      "assets/images/dollar-${type == IconDollarType.receive ? 'receive' : 'send'}.png";

  Color get backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.iconBackground1
      : AppTheme.colors.iconBackground2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        width: 48,
        height: 48,
        child: Center(
          child: Image.asset(pathImage, width: 32, height: 32),
        ));
  }
}
