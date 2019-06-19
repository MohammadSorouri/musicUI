import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_music_ui/songs.dart';
import 'package:flutter_app_music_ui/theme.dart';

import 'ButtonControls.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
            onPressed: (){},
            color: Color(0xffdddddd),

        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu),
            onPressed: (){},
            color: Color(0xffdddddd),

          ),
        ],
        title: Text(""),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                width: 125,
                height: 125,
                child: ClipOval(
                    clipper: CircleClipper(),
                    child: Image.network(demoPlaylist.songs[1].albumArtUrl,fit: BoxFit.cover,)),
              ),
            )
          ),
          Container(
             width: double.infinity,
             height: 125,

    ),
          new ButtonControls()
        ],
      ),
    );
  }

}

