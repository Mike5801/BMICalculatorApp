import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const Color defaultCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(defaultCardColor),
                ),
                Expanded(
                  child: Card(defaultCardColor),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Card(defaultCardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(defaultCardColor),
                ),
                Expanded(
                  child: Card(defaultCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;

  const Card(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
