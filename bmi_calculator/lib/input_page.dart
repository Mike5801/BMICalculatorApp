import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const Color defaultCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const Color iconTextColor = Color(0xFF8D8E98);

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
                  child: Card(
                    color: defaultCardColor,
                    cardChild:
                        IconText(text: 'MALE', icon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: defaultCardColor,
                    cardChild: IconText(text: 'FEMALE', icon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Card(color: defaultCardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(color: defaultCardColor),
                ),
                Expanded(
                  child: Card(color: defaultCardColor),
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
          style: const TextStyle(
            fontSize: 18.0,
            color: iconTextColor,
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({required this.color, this.cardChild, super.key});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
