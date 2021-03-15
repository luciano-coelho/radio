import 'package:flutter/material.dart';
import 'email.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormRadio extends StatefulWidget {
  @override
  _FormRadioState createState() => _FormRadioState();
}

class _FormRadioState extends State<FormRadio> {
  final _formKey = GlobalKey<FormState>();
  Email email = Email();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  var maskFormatter = new MaskTextInputFormatter(mask: '(##) #####-####', filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 50),
        child: Form(
            key: _formKey,
            child: ColunForm()
        ),
      ),
    );
  }

  Widget ColunForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Informe seu nome";
              }
              return null;
            },
            autofocus: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person_outline),
                hintText: 'Informe o nome'),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: TextFormField(
              inputFormatters: [
                maskFormatter
              ],
              controller: _phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Informe seu telefone";
                }
                return null;
              },
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.smartphone),
                  hintText: 'Informe o telefone'),
            )),
        TextFormField(
          keyboardType: TextInputType.text,
          maxLines: 5,
          minLines: 5,
          controller: _messageController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Informe sua mensagem";
            }
            return null;
          },
          autofocus: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.mail_outline),
              hintText: 'Mensagem'),
        ),
        Padding(
            padding: EdgeInsets.only(top: 50, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Enviando ...'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Colors.blueAccent,
                        ));
                        bool send = await email.sendMessage(
                            _messageController.text,
                            _nameController.text,
                            _phoneController.text);
                        if (send) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Mensagem enviada com sucesso'),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.green,
                          ));
                        } else {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Erro ao enviar a mensagem '),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.red,
                          ));
                        }
                      }
                    },
                    child: Text(
                      'ENVIAR',
                      style: TextStyle(),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}