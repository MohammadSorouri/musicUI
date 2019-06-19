import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_music_ui/theme.dart';
class ButtonControls extends StatelessWidget {
  const ButtonControls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Material(
        color: accentColor,
        shadowColor: Color(0x44000000),
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
                new PreviousButton(),
                Expanded(child: Container(),),
                new PlayPauseButton(),
                Expanded(child: Container(),),
                new NextButton(),
                Expanded(child: Container(),),

              ],),
            )
          ],),
        ),
      ),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
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
    );
  }
}

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      onPressed: (){},
      icon: Icon(Icons.skip_previous,color: Colors.white,size: 35,),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      onPressed: (){},
      icon: Icon(Icons.skip_next,color: Colors.white,size: 35,),
    );
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromCircle(
        center: Offset(size.width/2, size.height/2),
        radius: min(size.width,size.height)/2
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
