import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';
import 'package:tarea5/screens/momentos/momento1_screen.dart';
import 'package:tarea5/screens/momentos/momento2_screen.dart';
import 'package:tarea5/screens/momentos/momento3_screen.dart';

class MomentosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Momentos'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: ListView(
        children: [
          // Card 1
          Card(
            child: ListTile(
              title: Text('Aomine vs Kagami'),
              subtitle: Text('Enfrentamiento de Aomine y Kagami ambos dentro de la zona.'),
              leading: Image.asset('assets/momento1.jpg'), // Agrega la imagen del momento 1
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Momento1Screen()), // Navega a la pantalla del momento 1
                );
              },
            ),
          ),
          // Card 2
          Card(
            child: ListTile(
              title: Text('Akashi Emperor Eye'),
              subtitle: Text('Akashi demuestra su habilidad más letal, el ojo del emperador.'),
              leading: Image.asset('assets/momento2.jpg'), // Agrega la imagen del momento 2
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Momento2Screen()), // Navega a la pantalla del momento 2
                );
              },
            ),
          ),
          // Card 3
          Card(
            child: ListTile(
              title: Text('Kise copia perfecta'),
              subtitle: Text('Kise copia los movimientos de todos los miembros de la generación de los milagros.'),
              leading: Image.asset('assets/momento3.jpg'), // Agrega la imagen del momento 3
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Momento3Screen()), // Navega a la pantalla del momento 3
                );
              },
            ),
          ),
        ],
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContratameScreen()));
            },
          ),
        ],
      ),
    );
  }
}
