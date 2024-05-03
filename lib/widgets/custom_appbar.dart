import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required BuildContext context,
  required String courseName,
}) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_left_outlined)),
    title: Text(courseName),
    titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black),
    centerTitle: true,
  );
}
