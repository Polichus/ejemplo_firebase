import 'package:ejemplo_firebase/Pagines/Pagina_inici.dart';
import 'package:ejemplo_firebase/Pagines/Pagina_login.dart';
import 'package:ejemplo_firebase/auth/Login_o_Registre.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortalAuth extends StatelessWidget {
  const PortalAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          
          if(snapshot.hasData){
            return const PaginaInici();
          }else{
            return const LoginORegistre();
          }

        },
      ),
    );
  }
}
