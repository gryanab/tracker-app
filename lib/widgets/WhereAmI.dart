import 'package:flutter/material.dart';
import 'package:tracker/widgets/logo.dart';

class WhereAmI extends StatelessWidget {
  final buttonStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Gill Sans',
    letterSpacing: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logo(10, 20, 30, 40, 0, 40),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'We\'ve all been there...',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Text(
                'You’re an athlete having trouble keeping track of your training and performance.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Text(
                'Or you’re a coach looking for a solution to keep track of your athletes performance.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Text(
                'This solution is designed for you to get rid off your notebook and excel sheet.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Text(
                'By signing it, you’ll get a tool allowing you to keep track of yout performance with a beautifule interface.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            FlatButton(
                child: Text('I Want In'.toUpperCase(), style: buttonStyle),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
