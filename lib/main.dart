import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primerdiseno/src/pages/basico_page.dart';
import 'package:primerdiseno/src/pages/botones_page.dart';
import 'package:primerdiseno/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.blue,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseñoa',
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasiPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage()
      },
    );
  }
}
