import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconText extends StatelessWidget {
  const IconText({required this.text, required this.icon, super.key});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
