import 'package:flutter/material.dart';
import 'chat.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": ((context) => Home()),
        "/chat": ((context) => Chat()),
      },
    ));
