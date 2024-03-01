import 'package:flutter/material.dart';

class KurokoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuroko Tetsuya'),
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
                  'assets/kuroko.jpg',
                  width: 400,
                  height: 400,
                ),
              ), 
              SizedBox(height: 20),
              Text(
                'Kuroko Tetsuya',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Altura: 168 cm\n'
                'Edad: 16 años\n'
                'Peso: 57 kg\n'
                'Mejor Cualidad en el Juego: Pases Sorpresa',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
