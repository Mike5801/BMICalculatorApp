import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_text.dart';
import './custom_card.dart';

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
                  child: CustomCard(
                    color: defaultCardColor,
                    cardChild: IconText(
                      text: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: defaultCardColor,
                    cardChild: IconText(
                      text: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomCard(color: defaultCardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(color: defaultCardColor),
                ),
                Expanded(
                  child: CustomCard(color: defaultCardColor),
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



