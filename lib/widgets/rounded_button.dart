import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double verticalPadding;
  final double fontSize;
  const RoundedButton({
    Key key,
    this.text,
    this.onTap,
    this.verticalPadding = 16,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          vertical: 16,
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF666666).withOpacity(.10),
              offset: Offset(0, 15),
              blurRadius: 30,
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
