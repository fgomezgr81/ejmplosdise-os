import 'package:flutter/material.dart';

class BasiPage extends StatelessWidget {
  final styloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion'),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _crearImagen(),
          _crearTextos(),
          _crearBotones(),
          _crearBody(),
          _crearBody(),
          _crearBody(),
          _crearBody(),
        ]),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
          height: 180,
          fit: BoxFit.cover),
    );
  }

  Widget _crearTextos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Lago con un puente',
                  style: styloTitulo,
                ),
                SizedBox(height: 7.0),
                Text(
                  'Un lago que esta en chapala',
                  style: styloSubTitulo,
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0))
        ]),
      ),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'Llamar'),
        _crearAccion(Icons.near_me, 'Routa'),
        _crearAccion(Icons.share, 'Compartir'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(children: <Widget>[
      Icon(
        icon,
        color: Colors.blue,
        size: 40.0,
      ),
      SizedBox(height: 5.0),
      Text(
        texto,
        style: TextStyle(fontSize: 15.0, color: Colors.blue),
      )
    ]);
  }

  Widget _crearBody() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
