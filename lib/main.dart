import 'package:flutter/material.dart';
import 'home_radio.dart';
import 'form_radio.dart';
import 'schedule_radio.dart';
import 'package:audio_service/audio_service.dart';

void main() {
  runApp(MaterialApp(
    home: AudioServiceWidget(child: Home()),
    debugShowCheckedModeBanner: false,

  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  final List<Widget> _telas = [HomeRadio(), FormRadio(), ScheduleRadio()];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Radio",
            icon: Icon(Icons.play_circle_fill_sharp),
          ),
          BottomNavigationBarItem(
            label: "Fale com a Rádio",
            icon: Icon(Icons.email_outlined),
          ),
          BottomNavigationBarItem(
            label: "Programação",
            icon: Icon(Icons.accessibility),
          ),
        ],
      ),
    );
  }



}