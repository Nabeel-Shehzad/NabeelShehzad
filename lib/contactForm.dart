import 'package:flutter/material.dart';
import 'package:nabeel_shehzad/desktopNameRow.dart';
import 'package:nabeel_shehzad/mobileNameColumn.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var _formKey = GlobalKey<FormState>();
  double width = 900;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    setState((){
      width = MediaQuery. of(context). size.width;
    });
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Contact Me',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              width < 800 ?
                  MobileNameColumn(firstNameController: firstNameController, lastNameController: lastNameController):
              DesktopNameRow(firstNameController: firstNameController, lastNameController: lastNameController),
              Container(height: 10,),
              width < 800 ?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Text('Phone: ')),
                      Expanded(
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(43, 187, 115, 1),
                            decoration: InputDecoration(
                                hintText: 'Phone No. (Optional)',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(43, 187, 115, 1))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(43, 187, 115, 1)))),
                          ))
                    ],
                  ):
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text('Phone: ')),
                  Expanded(
                      child: TextFormField(
                        cursorColor: Color.fromRGBO(43, 187, 115, 1),
                        decoration: InputDecoration(
                            hintText: 'Phone No.',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(43, 187, 115, 1))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(43, 187, 115, 1)))),
                      )),
                  Container(width: 10,),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



