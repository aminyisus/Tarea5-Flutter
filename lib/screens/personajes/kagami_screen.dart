import 'package:flutter/material.dart';

class KagamiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kagami Taiga'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/kagami.jpg',
                  width: 400,
                  height: 400,
                ),
              ), 
              SizedBox(height: 20),
              Text(
                'Kagami Taiga',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Altura: 190 cm\n'
                'Edad: 16 años\n'
                'Peso: 82 kg\n'
                'Mejor Cualidad en el Juego: Salto',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
