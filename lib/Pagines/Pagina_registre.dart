import 'package:ejemplo_firebase/Components/boto_auth.dart';
import 'package:ejemplo_firebase/Components/textfield_auth.dart';
import 'package:flutter/material.dart';

class PaginaRegistre extends StatelessWidget {
  const PaginaRegistre({super.key});

  void ferRegistre(){

  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController tecEmail = TextEditingController();
    final TextEditingController tecPassword = TextEditingController();
    final TextEditingController tecConfPass = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo.
                const Icon(
                  Icons.fireplace,
                  size: 120,
                  color: Color.fromARGB(255, 255, 240, 218),
                ),

                const SizedBox(
                  height: 25,
                ),

                //Frase.
                const Text(
                  "Crea un compte nou",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 240, 218),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //Text divisori.
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 5,
                          color: Color.fromARGB(255, 255, 240, 218),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "Registra't",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 240, 218),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 5,
                          color: Color.fromARGB(255, 255, 240, 218),
                        ),
                      ),
                    ],
                  ),
                ),

                //TextField Email.

                TextfieldAuth(
                  controller: tecEmail,
                  obscureText: false,
                  hintText: "Escriu el teu emial...",
                ),

                //TextField Password

                TextfieldAuth(
                  controller: tecPassword,
                  obscureText: true,
                  hintText: "Escriu una password",
                ),

                //TextField Confirmar password

                TextfieldAuth(
                  controller: tecConfPass,
                  obscureText: true,
                  hintText: "Reescriu la teva password",
                ),

                const SizedBox(
                  height: 10,
                ),

                //No estas resgistrat/da?
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Ja ets membre?"),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: const Text(
                          "Fes login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 40, 71, 97),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //Botó registrar't
                BotoAuth(
                  text: "Registra't",
                  onTap: ferRegistre,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
