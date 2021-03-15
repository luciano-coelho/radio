import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SegundaFeira(),
          Padding(padding: EdgeInsets.only(top: 30)),
          TercaFeira(),
          Padding(padding: EdgeInsets.only(top: 30)),
          QuartaFeira(),
          Padding(padding: EdgeInsets.only(top: 30)),
          QuintaFeira(),
          Padding(padding: EdgeInsets.only(top: 30)),
          SextaFeira(),
          Padding(padding: EdgeInsets.only(top: 30)),
          Sabado(),
          Padding(padding: EdgeInsets.only(top: 30)),
          Domingo()
        ],
      ),
    );
  }

  Widget SegundaFeira() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Segunda Feira",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Devocional Hudson Carvalho"),
            horaProgramacao("13h", "Bate Papo com as Professoras"),
            horaProgramacao("14h30", "Tarde de Louvor"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("18h30min", "Encontro com Mulheres"),
            horaProgramacao("19h30min", "Palavra do Pr Roberto Carvalho"),
            horaProgramacao("20h30min", "Serenata Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget TercaFeira() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terca Feira",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Papo das Professoras"),
            horaProgramacao("13h", "Jovens Sois Fortes"),
            horaProgramacao("14h30", "Tarde de Louvor"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("17h", "Fala ai Pastor"),
            horaProgramacao("18h30min", "ICR Kids"),
            horaProgramacao("19h30min", "Noite de Louvor"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget QuartaFeira() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quarta Feira",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Devocional Hudson Carvalho"),
            horaProgramacao("13h", "Reformando Discípulos Rafael Nieweglowski"),
            horaProgramacao("14h30", "Tarde de Louvor"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("17h", "Fala ai Pastor"),
            horaProgramacao("18h30min", "Encontro com Mulheres"),
            horaProgramacao("19h30min", "Reformando Discípulos Rafael Nieweglowski"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget QuintaFeira() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quinta Feira",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Palavra Reformada"),
            horaProgramacao("13h", "Tarde de Louvor"),
            horaProgramacao("14h30", "Palavra do Pr Roberto Carvalho"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("19h30min", "Transmissão do Culto Ao Vivo - ICR Vila Velha/ES"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget SextaFeira() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sexta Feira",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Devocional Hudson Carvalho"),
            horaProgramacao("13h", "Reformando Discípulos Rafael Nieweglowski"),
            horaProgramacao("14h30", "Tarde de Louvor"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("17h", "Fala ai Pastor"),
            horaProgramacao("19h30min", "Reformando Discípulos Rafael Nieweglowski"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget Sabado() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sabado",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("11h", "Devocional Hudson Carvalho"),
            horaProgramacao("13h", "Tarde de Louvor"),
            horaProgramacao("14h30", "Papo com as Professoras"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("17h", "Fala ai Pastor"),
            horaProgramacao("19h30min", "Transmissão do Culto Ao Vivo - ICR Vila Velha/ES"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }
  Widget Domingo() {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Domingo",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            horaProgramacao("05h30min", "Alvorada com Deus"),
            horaProgramacao("05h45min", "Manhã de Louvor"),
            horaProgramacao("13h", "Reprise dos Cultos de Quinta Feira (EBD)"),
            horaProgramacao("14h30", "Tarde de Louvor"),
            horaProgramacao("16h", "Mensagem Expositiva"),
            horaProgramacao("17h", "Fala ai Pastor"),
            horaProgramacao("18h", "Transmissão do Culto Ao Vivo - ICR Vila Velha/ES"),
            horaProgramacao("19h40min", "Noite de Louvor"),
            horaProgramacao("20h30min", "Serenata na Web"),
            horaProgramacao("00h", "Madrugada com o Senhor"),
          ],
        )
    );
  }


  Widget horaProgramacao(String hora1, String programacao1) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                hora1,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                programacao1,
                style: TextStyle(
                  fontSize: 15,
                ),
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}