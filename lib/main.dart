import 'package:flutter/material.dart';
import 'package:bookapp/constant.dart';
import 'package:bookapp/widgets/rounded_button.dart';

void main() => runApp(BookApp());

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Reading',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
              )),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(
                    text: 'flamin',
                  ),
                  TextSpan(
                    text: 'go',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: 'start reading',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
