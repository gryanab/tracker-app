import 'package:flutter/material.dart';
import '../../widgets/Landing/components/landingOptions.dart';
import 'package:tracker/widgets/logo.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'WELCOME',
              style: TextStyle(
                  color: Colors.white, fontSize: 45, fontFamily: 'Gill Sans'),
            ),
          ),
          Text(
            'ON BOARD',
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontFamily: 'Gill Sans'),
          ),
          Logo(40, 50, 60, 90, 100, 100),
          LandingOptions(),
        ],
      ),
    );
  }
}
