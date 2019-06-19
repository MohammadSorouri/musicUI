import 'package:flutter/material.dart';

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
          Container(
            width: double.infinity,
            height: 250,
          ),
          Container(
            color: Colors.black,
            child: Column(children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "",
                  children: [
                    TextSpan(
                      text: "Song Title\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "Artist Name",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.75),
                        fontSize: 12,
                        letterSpacing: 3,
                        height: 1.5
                      )
                    )
                  ]
                ),
              ),
              Row(children: <Widget>[

              ],)
            ],),
          )
        ],
      ),
    );
  }

}
