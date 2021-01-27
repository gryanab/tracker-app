import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String userName;

  Welcome(this.userName);

  final buttonStyle = TextStyle(
    color: Color.fromRGBO(209, 178, 128, 1),
    fontSize: 18,
    fontFamily: 'Gill Sans',
    letterSpacing: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 100, 55, 10),
            child: Text(
              'NICE TO MEET YOU  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Gill Sans',
                letterSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '${userName.toUpperCase()}',
              style: TextStyle(
                color: Color.fromRGBO(209, 178, 128, 1),
                fontSize: 18,
                fontFamily: 'Gill Sans',
                letterSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: FlatButton(
              child: Text(
                'GO BACK',
                style: buttonStyle,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
