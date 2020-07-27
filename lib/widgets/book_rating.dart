import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';

class BookRating extends StatelessWidget {
  final double rating;
  const BookRating({
    Key key,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD3D3D3).withOpacity(.5),
            offset: Offset(3, 7),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$rating',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
