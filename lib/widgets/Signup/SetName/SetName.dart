import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tracker/widgets/Signup/Welcome/Welcome.dart';

Future createUser(String userName) async {
  Map data = {'username': userName};
  //encode Map to JSON
  var body = json.encode(data);
  final response = await http.post('http://localhost:5000/users/create',
      headers: {"Content-Type": "application/json"}, body: body);

  return response.statusCode;
}

class SetName extends StatefulWidget {
  @override
  _SetNameState createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  final textFieldValueControler = TextEditingController();
  var textFieldValue = '';

  final buttonStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Gill Sans',
    letterSpacing: 5,
  );

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textFieldValueControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 100, 55, 50),
            child: Text(
              'HOW SHOULD I CALL YOU ?',
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
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: textFieldValueControler,
              style: TextStyle(color: Color.fromRGBO(209, 178, 128, 1)),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Give me a name',
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      color: Color.fromRGBO(209, 178, 128, 1),
                      fontSize: 15,
                      fontFamily: 'Gill Sans',
                      letterSpacing: 5,
                    ),
                  ),
                  onPressed: () {
                    createUser(textFieldValueControler.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Welcome(textFieldValueControler.text),
                      ),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Gill Sans',
                    letterSpacing: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: FlatButton(
                  child: Text(
                    'GO BACK',
                    style: TextStyle(
                      color: Color.fromRGBO(209, 178, 128, 1),
                      fontSize: 15,
                      fontFamily: 'Gill Sans',
                      letterSpacing: 5,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
