import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';

class ContratameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contrátame'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/amin.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Amín Jesús Báez Espinosa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Celular: +1(829)-669-0027\nCorreo: baezamin580@gmail.com\nGithub: aminyisus\nLinkedIn: Amín Jesús Báez Espinosa',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            child: Text(
              'Kuroko no Basket Experience',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Portada'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
              Navigator.push(context, MaterialPageRoute(builder: (context) => PortadaScreen()));
            },
          ),
          ListTile(
            title: Text('Personajes'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersonajesScreen()));
            },
          ),
          ListTile(
            title: Text('Momentos'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
              Navigator.push(context, MaterialPageRoute(builder: (context) => MomentosScreen()));
            },
          ),
          ListTile(
            title: Text('Acerca de'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
              Navigator.push(context, MaterialPageRoute(builder: (context) => AcercaDeScreen()));
            },
          ),
          ListTile(
            title: Text('En mi vida'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
              Navigator.push(context, MaterialPageRoute(builder: (context) => EnMiVidaScreen()));
            },
          ),
          ListTile(
            title: Text('Contrátame'),
            onTap: () {
              Navigator.pop(context); // Cerrar el sidebar
            },
          ),
        ],
      ),
    );
  }
}
