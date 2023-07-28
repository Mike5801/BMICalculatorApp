import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_text.dart';
import './custom_card.dart';

const bottomContainerHeight = 80.0;
const Color selectedCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    setState(() {
      if (gender == 1) {
        if (maleCardColor == inactiveCardColor) {
          maleCardColor = selectedCardColor;
          femaleCardColor = inactiveCardColor;
        } else {
          maleCardColor = inactiveCardColor;
        }
      } else {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = selectedCardColor;
          maleCardColor = inactiveCardColor;
        } else {
          femaleCardColor = inactiveCardColor;
        }
      }
    });
  }

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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(1);
                    },
                    child: CustomCard(
                      color: maleCardColor,
                      cardChild: const IconText(
                        text: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(2);
                    },
                    child: CustomCard(
                      color: femaleCardColor,
                      cardChild: const IconText(
                        text: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomCard(color: selectedCardColor),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(color: selectedCardColor),
                ),
                Expanded(
                  child: CustomCard(color: selectedCardColor),
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
