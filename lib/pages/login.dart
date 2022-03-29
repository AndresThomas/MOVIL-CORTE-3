import 'package:movil/pages/recuperar_password.dart';
import 'package:movil/pages/registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          'Iniciar sesión',
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
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
                margin: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                child: const Text('Inicia sesión con tu cuenta para continuar',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold))),
            const SizedBox(height: 50),
            Form(
              child: Column(
                children: [
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
                          borderRadius: BorderRadius.circular(15.0),
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
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFFFFFFFF))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword(),
                          ));
                    },
                    child: Text('¿Has olvidado tu contraseña?',
                        style: TextStyle(
                            color: Color(0xFFFC1460),
                            fontWeight: FontWeight.bold))),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
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
                  'Ingresar',
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
                builder: (context) => const RegistroView(),
              ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("¿Todavia no tienes una cuenta? ",
                style: TextStyle(color: Colors.black)),
            Text("Registrate", style: TextStyle(color: Color(0xFFFC1460))),
          ],
        ),
      ),
    );
  }
}
