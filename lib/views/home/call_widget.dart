import 'package:flutter/material.dart';
import 'package:nussuunioncamp/widgets/call_to_action/call_to_action.dart';

class showDialouge extends StatelessWidget {
  const showDialouge({
    Key? key,
    required this.cancelButton,
    required this.continueButton,
    required this.topText,
    required this.bottomText, required this.insideButtonText,
  }) : super(key: key);

  final Widget cancelButton;
  final Widget continueButton;
  final String topText;
  final String bottomText;
  final String insideButtonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text(topText),
                content: Text(bottomText),
                actions: [
                  cancelButton,
                  continueButton,
                ],
              ));
        },
        child: CallToAction(insideButtonText));
  }
}
