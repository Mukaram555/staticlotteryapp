import 'package:flutter/material.dart';

class ContainerResult extends StatelessWidget {
  final String text;
  final Icon newIcon;
  final Color textColor;

  const ContainerResult({
    Key? key,
    required this.textColor,
    required this.text,
    required this.newIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        newIcon,
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
