

import 'dart:typed_data';

import 'package:ejemplo_firebase/mongodb/db_conf/db_conf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongodb;

class EditarDadesUsuari extends StatefulWidget {
  const EditarDadesUsuari({super.key});

  @override
  State<EditarDadesUsuari> createState() => _EditarDadesUsuariState();
}

class _EditarDadesUsuariState extends State<EditarDadesUsuari> {

  mongodb.Db? _db;
  Uint8List? _imatgeEnBytes;
  final ImagePicker imagePicker = ImagePicker();

  @override
  void dispose() {
    // TODO: implement dispose
    _db?.close();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _connectarAmbMongoDB().then((_) => print("Connectats amb MongoDB"));
  }

  Future _connectarAmbMongoDB() async {

    _db = await mongodb.Db.create(DBConf().connectionString);

    await _db!.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar dades usuari"
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            Text("Edita les teves dades"),
          ],
        ),
      ),
    );
  }
}
