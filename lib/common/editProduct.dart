/*
import 'package:hotel_rp/controllers/databasehelpers.dart';
import 'package:hotel_rp/view/listProducts.dart';
import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  final List list;
  final int index;

  EditProduct({required this.list, required this.index});

  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  DataBaseHelper databaseHelper = new DataBaseHelper();

  late TextEditingController controllerName;
  late TextEditingController controllerPrice;
  late TextEditingController controllerStock;
  late TextEditingController controllerId;

  @override
  void initState() {
    controllerId = new TextEditingController(
        text: widget.list[widget.index]['_id'].toString());
    controllerName = new TextEditingController(
        text: widget.list[widget.index]['name'].toString());
    controllerPrice = new TextEditingController(
        text: widget.list[widget.index]['price'].toString());
    controllerStock = new TextEditingController(
        text: widget.list[widget.index]['stock'].toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Modificar Producto"),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            new Column(
              children: <Widget>[
                new ListTile(
                  leading: const Icon(Icons.person, color: Colors.black),
                  title: new TextFormField(
                    controller: controllerId,
                    validator: (value) {},
                    decoration: new InputDecoration(
                      hintText: "Id",
                      labelText: "Id",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.person, color: Colors.black),
                  title: new TextFormField(
                    controller: controllerName,
                    validator: (value) {},
                    decoration: new InputDecoration(
                      hintText: "Nombre",
                      labelText: "Nombre",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.black),
                  title: new TextFormField(
                    controller: controllerPrice,
                    validator: (value) {},
                    decoration: new InputDecoration(
                      hintText: "Precio",
                      labelText: "Precio",
                    ),
                  ),
                ),
                new ListTile(
                  leading: const Icon(Icons.settings_input_component,
                      color: Colors.black),
                  title: new TextFormField(
                    controller: controllerStock,
                    validator: (value) {},
                    decoration: new InputDecoration(
                      hintText: "Stock",
                      labelText: "Stock",
                    ),
                  ),
                ),
                const Divider(
                  height: 1.0,
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new ElevatedButton(
                  child: new Text("Editar"),
                  onPressed: () {
                    databaseHelper.editarProduct(
                        controllerId.text.trim(),
                        controllerName.text.trim(),
                        controllerPrice.text.trim(),
                        controllerStock.text.trim());
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new ListProducts(),
                    ));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/