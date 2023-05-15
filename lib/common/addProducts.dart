/*
import 'package:hotel_rp/controllers/databasehelpers.dart';
import 'package:hotel_rp/main.dart';
import 'package:flutter/material.dart';

class AddDataProduct extends StatefulWidget {
  AddDataProduct({required this.title});
  final String title;

  @override
  _AddDataProductState createState() => _AddDataProductState();
}

class _AddDataProductState extends State<AddDataProduct> {
  DataBaseHelper databaseHelper = new DataBaseHelper();

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _priceController = new TextEditingController();
  final TextEditingController _stockController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Añadir',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Añadir Producto'),
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.only(
                top: 62, left: 12.0, right: 12.0, bottom: 12.0),
            children: <Widget>[
              Container(
                height: 50,
                child: new TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'nombre',
                    hintText: 'Nombre del producto',
                    icon: new Icon(Icons.email),
                  ),
                ),
              ),
              Divider(
                height: 40.0,
              ),
              Container(
                height: 50,
                child: new TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'precio',
                    hintText: 'Ingresa el precio',
                    icon: new Icon(Icons.vpn_key),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 44.0),
              ),
              Container(
                height: 50,
                child: new TextField(
                  controller: _stockController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Cantidad',
                    hintText: 'Ingresa la existencia',
                    icon: new Icon(Icons.vpn_key),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 44.0),
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    databaseHelper.addDataProducto(
                        _nameController.text.trim(),
                        _priceController.text.trim(),
                        _stockController.text.trim());
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new MainPage(),
                    ));
                  },
                  child: new Text(
                    'Aceptar',
                    style: new TextStyle(
                        color: Colors.white, backgroundColor: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/