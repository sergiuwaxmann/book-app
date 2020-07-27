import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';
import 'package:bookapp/widgets/book_rating.dart';
import 'package:bookapp/widgets/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * .4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * .4 - 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        title: 'Money',
                        description: 'Life is about change',
                        chapterNumber: 1,
                        onTap: () {},
                      ),
                      ChapterCard(
                        title: 'Power',
                        description: 'Everybody loves power',
                        chapterNumber: 2,
                        onTap: () {},
                      ),
                      ChapterCard(
                        title: 'Influence',
                        description: 'Influence like never before',
                        chapterNumber: 3,
                        onTap: () {},
                      ),
                      ChapterCard(
                        title: 'Win',
                        description: 'Winning is what matters',
                        chapterNumber: 4,
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
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
                          text: 'You might also ',
                        ),
                        TextSpan(
                          text: 'like….',
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
                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 180,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: double.infinity,
                          height: 160,
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 150,
                            top: 24,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF8F9),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'How To Win\nFriends & Influence\n',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Gary Venchuk',
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    rating: 4.9,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: RoundedButton(
                                      text: 'Read',
                                      verticalPadding: 10,
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
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String title;
  final String description;
  final int chapterNumber;
  final Function onTap;
  const ChapterCard({
    Key key,
    this.title,
    this.description,
    this.chapterNumber,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 48,
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
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
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $title\n',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  ),
                ),
                TextSpan(
                  text: description,
                  style: TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: onTap,
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ignore: deprecated_member_use
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.display1.copyWith(
                      fontSize: 30,
                    ),
              ),
              // ignore: deprecated_member_use
              Text(
                'Influence',
                style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'It is a state-of-the-art guide to building your own path to professional and financial success, a blueprint to living life on your own terms.',
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                          //maxLines: 5,
                          //overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundedButton(
                          text: 'Read',
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(
                        rating: 4.9,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
