import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:custom_text_input/custom_text_input.dart';

void main() {
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom TextInput Example'),
        ),
        body:
              CustomTextInput(
                controller: nameController,
                  maxlenth: 200,
                  maxLine: 1,
                  textsize: 15,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  icons: Icons.account_box_sharp,
                  hint: "Enter Name")
      ),
    );
  }

}
