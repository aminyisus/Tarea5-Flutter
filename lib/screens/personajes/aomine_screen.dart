import 'package:flutter/material.dart';

class AomineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aomine Daiki'),
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
                  'assets/aomine.jpg',
                  width: 400,
                  height: 400,
                ),
              ), 
              SizedBox(height: 20),
              Text(
                'Aomine Daiki',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Altura: 192 cm\n'
                'Edad: 17 años\n'
                'Peso: 77 kg\n'
                'Mejor Cualidad en el Juego: Tiro',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
