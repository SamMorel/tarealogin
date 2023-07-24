import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextFormField(
              controller: ,
              decoration: const InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            )
          ],
        ));
  }
}
