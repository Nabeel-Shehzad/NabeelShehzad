import 'package:flutter/material.dart';

class MobileNameColumn extends StatefulWidget {
  MobileNameColumn({
    Key? key,
    required this.firstNameController,
    required this.lastNameController,
  }) : super(key: key);

  TextEditingController firstNameController;
  TextEditingController lastNameController;

  @override
  State<MobileNameColumn> createState() => _MobileNameColumnState();
}

class _MobileNameColumnState extends State<MobileNameColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
                      borderSide:
                          BorderSide(color: Color.fromRGBO(43, 187, 115, 1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(43, 187, 115, 1)))),
            )),
          ],
        ),
        Container(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text('Last Name: ')),
            Expanded(
                child: TextFormField(
              controller: widget.lastNameController,
              cursorColor: Color.fromRGBO(43, 187, 115, 1),
              decoration: InputDecoration(
                  hintText: 'Last Name',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(43, 187, 115, 1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(43, 187, 115, 1)))),
            )),
          ],
        ),
      ],
    );
  }
}
