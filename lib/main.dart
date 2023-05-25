import 'package:flutter/material.dart';
import 'package:contador/pages/home.dart';
import 'package:contador/pages/login.dart';
void main()
{
  runApp
  (
   const MaterialApp
   (
    debugShowCheckedModeBanner: false,
    title: "Contador",
     home: LoginPage()
   )
  );
}
