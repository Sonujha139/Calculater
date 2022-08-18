import 'package:calculator/widgets/Constant.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String Title;
  final Color color;
  final VoidCallback onPress;
  const Button({Key? key, required this.Title, required this.color, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                Title,
                style: const TextStyle(
                  fontSize: 20,
                  color: whiteColors,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
