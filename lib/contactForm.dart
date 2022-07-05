import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'images/logo.png',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text('First Name: ')),
                  Expanded(
                      child: TextFormField(
                    cursorColor: Color.fromRGBO(43, 187, 115, 1),
                    decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(43, 187, 115, 1))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(43, 187, 115, 1)))),
                  )),
                  Container(
                    width: 10,
                  ),
                  Expanded(child: Text('Last Name: ')),
                  Expanded(
                      child: TextFormField(
                    cursorColor: Color.fromRGBO(43, 187, 115, 1),
                    decoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(43, 187, 115, 1))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(43, 187, 115, 1)))),
                  )),
                ],
              ),
              Container(height: 20,),
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
