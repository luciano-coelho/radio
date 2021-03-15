import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class HomeRadio extends StatefulWidget {
  @override
  _HomeRadioState createState() => _HomeRadioState();
}

class _HomeRadioState extends State<HomeRadio> {
  _HomeRadioState(){

  }

  AudioPlayer audioPlayer = AudioPlayer();
  Color colorPlay = Colors.white;
  Color colorStop = Color.fromRGBO(214, 50, 34, 1);

  Future<void> initAudio() async{
    setState(() {
      colorPlay = Colors.blueAccent;
      colorStop = Colors.white;
    });
    await audioPlayer.play("https://1.stmip.net/8076");
  }

  pauseAudio() {
    setState(() {
      colorStop = Color.fromRGBO(214, 50, 34, 1);
      colorPlay = Colors.white;
    });
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

        child: stackRadio()
    );
  }

  Widget stackRadio(){
    return Stack(
      children: [
        Image.asset("images/plano_de_fundo.png", fit: BoxFit.cover,
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.cover,
                height: 300.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: FlatButton(
                      onPressed: () async{
                        initAudio();
                      },
                      child: Icon(
                        Icons.play_circle_outline,
                        size: 80,
                        color: colorPlay,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      pauseAudio();
                    },
                    child: Icon(
                      Icons.stop_circle_outlined,
                      size: 80,
                      color: colorStop,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
}