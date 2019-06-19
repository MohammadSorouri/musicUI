import 'package:flutter/material.dart';
import 'package:flutter_app_music_ui/theme.dart';

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
              ),
            )
          ),
          Container(
            color: accentColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 50),
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
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(children: <Widget>[
                    Expanded(child: Container(),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.skip_previous,color: Colors.white,size: 35,),
                    ),
                    Expanded(child: Container(),),
                    RawMaterialButton(
                      shape: CircleBorder(),
                      fillColor: Colors.white,
                      splashColor: accentColor,
                      highlightColor: lightAccentColor.withOpacity(.5),
                      elevation: 10,
                      highlightElevation: 5,
                      onPressed: (){},
                      child: Padding(padding: EdgeInsets.all(8),
                      child: Icon(Icons.play_arrow,color: darkAccentColor,size: 35,),
                      ),
                    ),
                   Expanded(child: Container(),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.skip_next,color: Colors.white,size: 35,),
                    ),
                    Expanded(child: Container(),),

                  ],),
                )
              ],),
            ),
          )
        ],
      ),
    );
  }

}
