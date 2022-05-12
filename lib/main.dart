import 'package:flutter/material.dart';
import 'package:untitled/UI/ConsultationList.dart';
import 'package:untitled/UI/PharmacientList.dart';

import 'UI/DoctoeList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConsultaionList(),
    );
  }
}
