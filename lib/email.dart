import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class Email {
  String _username = "alexsandervieirajunior@gmail.com";
  String _password = "Alex1234";
  var smtpServer;

  Email(){
    smtpServer = gmail(_username, _password);
  }

  //Envia um email para o destinatário, contendo a mensagem com o nome do sorteado
  Future<bool> sendMessage(String mensagem, String remetente, String phone) async {

    //Configurar a mensagem
    final message = Message()
      ..from = Address(_username, remetente)
      ..recipients.add("alexsandervieirajunior@hotmail.com")
      ..subject = "Mensagem enviada pelo APP por: $remetente"
      ..text = "$mensagem, Telefone para contato: $phone";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());

      return true;
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
      return false;
    }
  }
}