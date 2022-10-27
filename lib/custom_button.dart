import 'package:flutter/material.dart';
import 'package:zoomapp/utils/colors_utils.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,
  required this.text,
  required this.onPressed
  }) : super(key: key);

  final String text;
  VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: Size(
              double.infinity,
              50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.red)
          )

        ),
          onPressed: onPressed,
          child: Text(text,style: const TextStyle(
            fontSize: 17
          ),)),
    );
  }
}
