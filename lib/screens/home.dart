import 'package:flutter/material.dart';
import 'package:bookapp/widgets/reading_list_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
