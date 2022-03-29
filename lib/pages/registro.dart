import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegistroView extends StatefulWidget {
  const RegistroView({Key? key}) : super(key: key);

  @override
  State<RegistroView> createState() => _RegistroViewState();
}

class _RegistroViewState extends State<RegistroView> {
  bool _value = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F1581),
        foregroundColor: const Color(0xFFFC1560),
        title: const Text(
          'Regístrate',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Image.asset('lib/img/splash.png'),
            onPressed: () => () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 17, 50),
                child: const Text('Crea una cuenta para empezar a usar la app',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold))),
            Form(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Nombre',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: 'Nombre completo',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Correo electrónico',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: 'Dirección de correo',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Contraseña',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: 'Contraseña',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () => setState(
                                () => _passwordVisible = !_passwordVisible),
                          )),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'La contraseña es obligatoria';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 30, 15),
                    child: const Text(
                      'La contraseña debe de contener caracteres, números y símbolos con un minimo de 6 caracteres.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                  ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 20, 30),
                      title: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Al registrarme, acepto los '),
                            TextSpan(
                                text: 'términos y condiciones ',
                                style: TextStyle(
                                  color: Color(0xFFFC1560),
                                )),
                            TextSpan(text: 'y la '),
                            TextSpan(
                                text: 'política de privacidad',
                                style: TextStyle(
                                  color: Color(0xFFFC1560),
                                )),
                          ],
                        ),
                      ),
                      leading: Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: const Color(0xFFFC1560),
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      )),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF76AB56),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Crear cuenta',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => const Color(0xFFFFFFFF))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("¿Ya tienes cuenta? ", style: TextStyle(color: Colors.black)),
            Text("Iniciar sesión",
                style: TextStyle(
                    color: Color(0xFFFC1460), fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
