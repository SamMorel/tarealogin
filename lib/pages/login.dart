import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tarealogin/widgetperso/inputform.dart';
import 'package:tarealogin/shared/rutas.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final correoController = TextEditingController();
  final contraController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.green[300],
                  radius: 60,
                  backgroundImage: const CachedNetworkImageProvider(
                      'https://i.pinimg.com/564x/03/75/80/03758090f65d7e51e043aa2970b28fa7.jpg'),
                ),
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      InputForm(
                        label: 'correo',
                        icon: Icons.mail,
                        controller: correoController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingrese un correo';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InputForm(
                        label: 'contraseña',
                        icon: Icons.password,
                        obscureText: true,
                        mostrarBoton: true,
                        controller: contraController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Ingrese la contrasela';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              FilledButton.tonal(
                onPressed: () {
                  validacion(context);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green[300]),
                child: const Text(
                  'Iniciar seccion',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  validacion(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (correoController.text == "sjalvaradom@unah.hn" &&
          contraController.text == "20202001484") {
        Navigator.pushNamed(context, Rutas.inicio.name);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Correo y/o contraseña incorrectos"),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }
}
