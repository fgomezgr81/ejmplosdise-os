import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'basico_page.dart';

class ButonPage extends StatefulWidget {
  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<ButonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _fondoApp(),
        SingleChildScrollView(
          //controller: controller,
          child: Column(
            children: <Widget>[
              _titulos(),
              _botonesRedondeados(context),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _fondoApp() {
    final _gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final _cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ])),
        ));

    return Stack(
      children: <Widget>[_gradiente, Positioned(top: -100.0, child: _cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Classify transaction',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              Text('Classify this transaction',
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            ]),
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _crearBtnRendodeado(
              Colors.blue, Icons.border_all, 'General', context),
          _crearBtnRendodeado(
              Colors.purpleAccent, Icons.directions_boat, 'Boat', context),
        ]),
        TableRow(children: [
          _crearBtnRendodeado(
              Colors.blue[200], Icons.disc_full, 'Disco', context),
          _crearBtnRendodeado(Colors.redAccent, Icons.dns, 'DNS', context),
        ]),
        TableRow(children: [
          _crearBtnRendodeado(
              Colors.cyan, Icons.do_not_disturb, 'Disturb', context),
          _crearBtnRendodeado(Colors.grey, Icons.domain, 'Domain', context),
        ]),
        TableRow(children: [
          _crearBtnRendodeado(
              Colors.indigoAccent, Icons.done_all, 'Done all', context),
          _crearBtnRendodeado(
              Colors.lightBlueAccent, Icons.drafts, 'Drafts', context),
        ])
      ],
    );
  }

  Widget _crearBtnRendodeado(
      Color color, IconData icon, String texto, BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 5.0),
                CircleAvatar(
                    radius: 35.0,
                    backgroundColor: color,
                    child: Icon(icon, color: Colors.white, size: 30.0)),
                // Text('Cosa', style: TextStyle(color: color)),
                SizedBox(height: 5.0),
                FlatButton(
                    // Dentro del widget `FirstRoute`
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BasiPage()),
                      );
                    },
                    child: Text(
                      texto,
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
        ),
      ),
    );
  }
}
