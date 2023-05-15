import 'dart:async';
import 'dart:convert';
import 'package:hotel_rp/view/detailProduct.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListProducts extends StatefulWidget {
  const ListProducts({super.key});

  @override
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  late List data;

  Future<List> getData() async {
    final myUrl =
        Uri(scheme: 'https', host: 'hotel-rp.vercel.app', path: '/api/eventos');
    final response = await http.get(myUrl);
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tareas Pendientes"),
        ),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ItemList(
                    list: snapshot.requireData,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
        drawer: Drawer(
            backgroundColor: Colors.black45,
            child: Column(
              children: const <Widget>[
                Divider(height: 10),
                Text(
                  'Acerca de ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Divider(height: 10),
                Card(
                  child: ListTile(
                    title: Text('Universidad Tecnológica de'),
                    subtitle: Text(' Xicotepec de Juárez, Puebla'),
                  ),
                ),
                Card(
                  child: ListTile(
                      title: Text('Sabdiel Gutiérrez Mejía'),
                      subtitle:
                          Text('ING. en Gestión y Desarrollo de Software')),
                ),
              ],
            )));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return _checastatus(context, i);
      },
    );
  }

  Widget _checastatus(context, i) {
    String departamentoActual = "ventas"; //asignacion de departamento
    if ((list[i]['status']) == false) {
      return Container(height: 0.0);
    } else {
      return Container(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => Detail(
                      list: list,
                      indice: i,
                      departamento:
                          departamentoActual, //interpolar variable del departamento actual
                    )),
          ),
          child: Card(
            child: ListTile(title: Text("${list[i]['nombre_evento']}")),
          ),
        ),
      );
    }
  }
}
