import 'package:flutter/material.dart';
import 'package:tarea5/screens/portada_screen.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';
import 'package:video_player/video_player.dart';

class EnMiVidaScreen extends StatefulWidget {
  @override
  _EnMiVidaScreenState createState() => _EnMiVidaScreenState();
}

class _EnMiVidaScreenState extends State<EnMiVidaScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/en_mi_vida.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('En mi vida'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            SizedBox(height: 20),
            // Controles de reproducción y volumen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                ),
                SizedBox(width: 20),
                Icon(Icons.volume_down),
                Slider(
                  value: _controller.value.volume,
                  onChanged: (value) {
                    setState(() {
                      _controller.setVolume(value);
                    });
                  },
                  min: 0,
                  max: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
