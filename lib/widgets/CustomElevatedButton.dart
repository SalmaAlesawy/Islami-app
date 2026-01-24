import 'package:flutter/material.dart';


class Customelevatedbutton extends StatelessWidget {
  const Customelevatedbutton({super.key, required this.buttonText, required this.buttonColor, required this.textColor,required this.onPressed});
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
        child: ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                backgroundColor:
                     WidgetStatePropertyAll(buttonColor)),
            onPressed:onPressed,
            child: Text(
              buttonText,
              style: textTheme.titleLarge
                  ?.copyWith(color:textColor),
            )));
  }
}
