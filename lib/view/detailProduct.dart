import 'package:hotel_rp/controllers/databasehelpers.dart';
//import 'package:hotel_rp/view/editProduct.dart';
//import 'package:hotel_rp/view/listProducts.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String departamento;
  List list;
  int indice;
  Detail(
      {required this.indice, required this.list, required this.departamento});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DataBaseHelper databaseHelper = DataBaseHelper();
/*
  //create function delete
  void confirm() {
    AlertDialog alertDialog = AlertDialog(
      content:
          Text("¿ Eliminar '${widget.list[widget.indice]['nombre_evento']}' ?"),
      actions: <Widget>[
        ElevatedButton(
          child: const Text(
            "Si",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            databaseHelper
                .removeRegister(widget.list[widget.indice]['_id'].toString());
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ListProducts(),
            ));
          },
        ),
        ElevatedButton(
          child: const Text("No", style: TextStyle(color: Colors.black)),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    //showDialog(context: context, child: alertDialog);
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("${widget.list[widget.indice]['nombre_evento']}")),
      body: Card(
        child: Column(
          children: <Widget>[
            Text(
              widget.list[widget.indice]['descripcion'],
              style: const TextStyle(fontSize: 20.0),
            ),
            const Divider(),
            Column(
              children: [
                Row(
                  children: [
                    Text("Ventas: ", style: _estilo()),
                    _ventas(),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sistemas: ",
                      style: _estilo(),
                    ),
                    _sistemas(),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Manteminiento: ",
                      style: _estilo(),
                    ),
                    _mantenimiento(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _sistemas() {
    if ((widget.list[widget.indice]['tareas']['sistemas']) == null) {
      return const Text("No Hay Tarea Asignada");
    } else {
      return Text(
        "${widget.list[widget.indice]['tareas']['sistemas']}.",
        style: _estilo(),
      );
    }
  }

  Widget _ventas() {
    if ((widget.list[widget.indice]['tareas'][widget.departamento]) == null) {
      return Text(
          "no hay tarea asignada a ${widget.departamento}."); //validar la tarea asignada a departamento actual
    } else {
      return Text(
        "${widget.list[widget.indice]['tareas'][widget.departamento]}.",
        style: _estilo(),
      );
    }
  }

  Widget _mantenimiento() {
    if ((widget.list[widget.indice]['tareas']['mantenimiento']) == null) {
      return const Text("No Hay Tarea asignada");
    } else {
      return Text(
        "${widget.list[widget.indice]['tareas']['mantenimiento']}.",
        style: _estilo(),
      );
    }
  }

  TextStyle _estilo() {
    return const TextStyle(fontSize: 15);
  }
}
