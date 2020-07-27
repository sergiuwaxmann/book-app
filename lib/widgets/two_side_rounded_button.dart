import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double radius;
  const TwoSideRoundedButton({
    Key key,
    this.text,
    this.onTap,
    this.radius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
