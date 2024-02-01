import 'package:flutter/material.dart';

class ButtonComp extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonComp({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: 301,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          )
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(0, 8, 35, 1),
                fontWeight: FontWeight.w400
              ),
            ),
            const Icon(Icons.arrow_right, size: 40, color: Colors.black,)
          ],
        )
      )
    );
  }
}