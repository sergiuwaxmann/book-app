import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/two_side_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final Function onTapDetails;
  final Function onTapRead;
  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.author,
    this.rating,
    this.onTapDetails,
    this.onTapRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 245,
      margin: EdgeInsets.only(
        left: 24,
        bottom: 40,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            right: 10,
            top: 35,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(
                  rating: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              width: 200,
              height: 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: author,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: onTapDetails,
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: 'Read',
                          onTap: onTapRead,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
