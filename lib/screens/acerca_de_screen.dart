import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';

class AcercaDeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Kuroko no Basket'),
            _buildText(
              'Kuroko no Basket es una serie de manga de deportes, escrita e ilustrada por Tadatoshi Fujimaki. '
              'El manga comenzó su serialización el 8 de diciembre de 2008 en la revista Shūkan Shōnen Jump de la editorial Shūeisha, '
              'y finalizó el 29 de agosto de 2014. El 9 de octubre de 2014, se anunció que el manga continuaría en la revista Jump Next a partir del 29 de diciembre bajo el título de Kuroko\'s Basketball: Extra Game. '
              'Esta secuela continuará justo después de los hechos que finalizaron el manga original. En diciembre salió a la venta el volumen recopilatorio número 30, dando por finalizada la colección del manga original.'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Argumento'),
            _buildText(
              'El equipo de baloncesto de la Secundaria Teikō se convirtió en el mejor equipo a nivel de secundaria, tras lograr ganar el torneo durante tres años consecutivos. '
              'Los integrantes de este equipo son conocidos como la "generación de los milagros", refiriéndose a cada uno de ellos como prodigios. '
              'Después de graduarse de la secundaria, cada integrante fue a diferentes preparatorias con los mejores equipos de baloncesto. '
              'Sin embargo, es sabido por unos pocos de que hubo otro jugador en la generación de los milagros, el denominado "sexto jugador fantasma". '
              'Este misterioso jugador es ahora un estudiante de primer año en la Preparatoria Seirin, una escuela con un poderoso pero desconocido equipo de baloncesto. '
              'Ahora, Tetsuya Kuroko, el sexto miembro de esta generación y Taiga Kagami, un jugador de talento natural que pasó la mayor parte de la escuela secundaria en Estados Unidos, '
              'tienen como objetivo llevar a Seirin a ser los número uno de Japón, jugando contra los viejos compañeros del equipo de Kuroko.'
            ),
            SizedBox(height: 20),
            _buildSectionTitle('Datos importantes'),
            _buildText(
              'Creador: Tadatoshi Fujimaki\n'
              'Género: Comedia, deportes (baloncesto), escolar.\n'
              'Primera publicación: 8 de diciembre de 2008.\n'
              'Última publicación: 1 de septiembre de 2014.'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
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
