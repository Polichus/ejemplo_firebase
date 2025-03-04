import 'package:ejemplo_firebase/Components/item_usuari.dart';
import 'package:ejemplo_firebase/Pagines/Pagina_chat.dart';
import 'package:ejemplo_firebase/auth/servei_auth.dart';
import 'package:ejemplo_firebase/chat/servei_chat.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PaginaInici extends StatefulWidget {
  const PaginaInici({super.key});

  @override
  State<PaginaInici> createState() => _PaginaIniciState();
}

class _PaginaIniciState extends State<PaginaInici> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(ServeiAuth().getUsuariActual()!.email!),
        actions: [
          IconButton(
            onPressed: () {
              ServeiAuth().ferLogout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: ServeiChat().getUsuaris(),
        builder: (context, snapshot) {
          // Cas que hi hagi un error
          if (snapshot.hasError) {
            return const Text("Error en el snapshot");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Carregant dades...");
          }

          // Es retornen les dades
          return ListView(
            children: snapshot.data!
                .map(<Widget>(dadesUsuaris) =>
                    _construeixItemUsuari(dadesUsuaris))
                .toList(),
          );
        },
      ),
    );
  }

  Widget _construeixItemUsuari(Map<String, dynamic> dadesUsuari) {
    if (dadesUsuari["email"] == ServeiAuth().getUsuariActual()!.email) {
      return Container();
    }

    return ItemUsuari(
      emailUsuari: dadesUsuari["email"],
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaginaChat(
              idReceptor: dadesUsuari["uid"],
            ),
          ),
        );
      },
    );
  }
}
