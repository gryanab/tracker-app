import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double smallestSize;
  final double middleSize;
  final double biggestSize;
  final double centerSize;
  final double topLogoPadding;
  final double bottomLogoPadding;

  Logo(this.smallestSize, this.middleSize, this.biggestSize, this.centerSize,
      this.topLogoPadding, this.bottomLogoPadding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, topLogoPadding, 0, bottomLogoPadding),
      child: Container(
        child: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'T',
                      style: TextStyle(
                        color: Color.fromRGBO(209, 178, 128, 1),
                        fontSize: smallestSize,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'R',
                        style: TextStyle(
                          color: Color.fromRGBO(209, 178, 128, 1),
                          fontSize: middleSize,
                        ),
                      ),
                    ),
                    Text(
                      'A',
                      style: TextStyle(
                        color: Color.fromRGBO(209, 178, 128, 1),
                        fontSize: biggestSize,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Transform.rotate(
                  angle: 3,
                  child: Text(
                    'C',
                    style: TextStyle(
                      color: Color.fromRGBO(209, 178, 128, 1),
                      fontSize: centerSize,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'K',
                      style: TextStyle(
                        color: Color.fromRGBO(209, 178, 128, 1),
                        fontSize: biggestSize,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'E',
                        style: TextStyle(
                          color: Color.fromRGBO(209, 178, 128, 1),
                          fontSize: middleSize,
                        ),
                      ),
                    ),
                    Text(
                      'R',
                      style: TextStyle(
                        color: Color.fromRGBO(209, 178, 128, 1),
                        fontSize: smallestSize,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
