import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';
import 'package:bookapp/widgets/reading_list_card.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/two_side_rounded_button.dart';
import 'package:bookapp/screens/details.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main-bg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        // ignore: deprecated_member_use
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: 'What are you\nreading '),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          title: 'Crushing & Influence',
                          author: 'Gary Venchuk',
                          rating: 4.9,
                          onTapDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          title: 'Top 10 Business Hacks',
                          author: 'Herman Joel',
                          rating: 4.8,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            // ignore: deprecated_member_use
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(
                                text: 'Best of the ',
                              ),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            // ignore: deprecated_member_use
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: 'Continue '),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 10),
                                blurRadius: 30,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 30,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Gary Venchuk',
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/book-1.png',
                                          width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * .65,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      width: double.infinity,
      height: 205,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 185,
              padding: EdgeInsets.only(
                left: 24,
                right: size.width * .35,
                top: 24,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'New York Time Best for 18th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How To Win\nFriends & Influence',
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      BookRating(
                        rating: 4.9,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'It is a state-of-the-art guide to building your own path to professional and financial success...',
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * .37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              width: size.width * .3,
              height: 40,
              child: TwoSideRoundedButton(
                text: 'Read',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
