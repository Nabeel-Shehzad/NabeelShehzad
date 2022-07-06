import 'package:flutter/material.dart';
class DesktopNameRow extends StatefulWidget {
  DesktopNameRow({
    Key? key,
    required this.firstNameController,
    required this.lastNameController,
  }) : super(key: key);
  TextEditingController firstNameController;
  TextEditingController lastNameController;
  @override
  State<DesktopNameRow> createState() => _DesktopNameRowState();
}

class _DesktopNameRowState extends State<DesktopNameRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Text('First Name: ')),
        Expanded(
            child: TextFormField(
              controller: widget.firstNameController,
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
              controller: widget.lastNameController,
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
    );
  }
}