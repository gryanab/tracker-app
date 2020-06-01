import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<AlbumI> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AlbumI.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class AlbumI {
  final int userId;
  final int id;
  final String title;

  AlbumI({this.userId, this.id, this.title});

  factory AlbumI.fromJson(Map<String, dynamic> json) {
    return AlbumI(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class Album extends StatefulWidget {
  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  Future<AlbumI> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
          FutureBuilder<AlbumI>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.title,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
