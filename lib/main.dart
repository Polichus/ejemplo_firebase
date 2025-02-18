import 'package:ejemplo_firebase/Pagines/Pagina_registre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaRegistre(),
    );
  }
}


/*
1) Tenir Node.js instalat
  -En acabar, es pot comprobar fent:
    node -v
    nom -v

2) Anar a la web de Firebase i clicar a "Go to console".
  - Tenir en compte amb quin compte de Google estas.

3) Des de la consola de Firebase, creem un projecte de Firebase.

4) Anem al menu Compilación i habilitem:
    Authentication i Firestore Databas

5) En una cmd per exemple la del VS Code, fem:
    npm install -g firebase-tools
    (això instala Firebase al dispositiu)
    Pot fer falta fer abans:
     Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

6) dart pub global activate flutterfire_cli

7) flutterfire configure
   - Seleccionem el projecte de Firebase
      amb el que el volem vincular.
   - Deiexem seleccionats només els dispositius amb els que 
      volem que funcioni l'aplicació (en aquest cas android i web).

  

*/