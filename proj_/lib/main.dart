// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:proj_/home_page.dart';
import 'package:proj_/login_page.dart';
import 'package:proj_/pdf_page.dart';

import './routes.dart';
import 'package:flutter/material.dart';
import 'package:proj_/routes.dart';
import '../../compressor_page.dart';
import '../../webservices_page.dart';
import '../../scanner_page.dart';
import './mainpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'QR Code Scanner';
  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.black,
    );
    // ignore: prefer_const_constructors
    return MaterialApp(title: 'Freedom', initialRoute: '/', routes: {
      MyRoutes.homeroute: (context) => const HomePage(),
      MyRoutes.compressorroute: (context) => const CompressorPage(),
      MyRoutes.scannerroute: (context) => const ScannerPage(),
      MyRoutes.webservicesroute: (context) => const WebServicePage(),
      MyRoutes.loginpageroute: (context) => const LoginPage(),
      MyRoutes.pdfpageroute: (context) => PdfPage(),
    });
  }
}
