import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes/kuroko_screen.dart';
import 'package:tarea5/screens/personajes/kagami_screen.dart';
import 'package:tarea5/screens/personajes/aomine_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';

class PersonajesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: ListView(
        children: [
          ListTile(
            title: Text('Kuroko Tetsuya'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KurokoScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Kagami Taiga'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KagamiScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Aomine Daiki'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AomineScreen()),
              );
            },
          ),
          // Puedes añadir más listTiles para más personajes
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContratameScreen()));
            },
          ),
        ],
      ),
    );
  }
}
