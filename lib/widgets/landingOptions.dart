import 'package:flutter/material.dart';
import 'package:tracker/widgets/Album.dart';
import 'package:tracker/widgets/WhereAmI.dart';

class LandingOptions extends StatelessWidget {
  final buttonStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Gill Sans',
    letterSpacing: 5,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Gill Sans',
                  letterSpacing: 5,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Album(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('|', style: buttonStyle),
            ),
            FlatButton(
              child: Text(
                'Sign In',
                style: buttonStyle,
              ),
              onPressed: null,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: FlatButton(
            child: Text(
              'Where am I ?',
              style: buttonStyle,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WhereAmI(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
