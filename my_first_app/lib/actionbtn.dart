import 'package:flutter/material.dart';

Widget actionbutton(IconData icon, String actiontitle, Color iconcolor) {
  return Expanded(
    child: FlatButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconcolor,
      ),
      label: Text(
        actiontitle,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
