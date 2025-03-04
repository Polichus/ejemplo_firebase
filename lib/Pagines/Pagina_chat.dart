import 'package:ejemplo_firebase/chat/servei_chat.dart';
import 'package:flutter/material.dart';

class PaginaChat extends StatefulWidget {
  final String idReceptor;

  const PaginaChat({
    super.key,
    required this.idReceptor,
  });

  @override
  State<PaginaChat> createState() => _PaginaChatState();
}

class _PaginaChatState extends State<PaginaChat> {
  final TextEditingController tecMissatge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text("Sala chat"),
      ),
      body: Column(
        children: [
          //Zona missatges
          _crearZonaMostrarMissatges(),
          //Zona escriure missatges
          _crearZonaEscriureMissatges(),
        ],
      ),
    );
  }

  Widget _crearZonaMostrarMissatges() {
    return const Expanded(
      child: Text("1"),
    );
  }

  _crearZonaEscriureMissatges() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: tecMissatge,
              decoration: InputDecoration(
                hintText: "Escriu el teu missatge...",
                filled: true,
                fillColor: Colors.amber[200],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: enviarMissatge,
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  void enviarMissatge() {
    if (tecMissatge.text.isNotEmpty) {
      ServeiChat().enviarMissatge(
        widget.idReceptor,
        tecMissatge.text,
      );

      tecMissatge.clear();
    }
  }
}
