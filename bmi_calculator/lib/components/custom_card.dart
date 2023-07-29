import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.color, this.cardChild, this.onPressed, super.key});

  final Color color;
  final Widget? cardChild;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}