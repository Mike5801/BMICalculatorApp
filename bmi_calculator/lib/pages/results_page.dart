import '../components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/custom_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({required this.conclusion, required this.result, required this.description, super.key});

  final String conclusion;
  final String result;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text('Your result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    conclusion,
                    style: kConclusionTextStyle,
                  ),
                  Text(result, style: kResultTextStyle),
                  Text(
                    description,
                    style: kDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonText: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
