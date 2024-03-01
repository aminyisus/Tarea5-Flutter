import 'package:flutter/material.dart';
import 'package:tarea5/screens/personajes_screen.dart';
import 'package:tarea5/screens/momentos_screen.dart';
import 'package:tarea5/screens/acerca_de_screen.dart';
import 'package:tarea5/screens/en_mi_vida_screen.dart';
import 'package:tarea5/screens/contratame_screen.dart';
import 'package:video_player/video_player.dart';

class PortadaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portada'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Bienvenido! Ven y conoce más sobre Kuroko no Basket!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              'assets/portada.jpg', // Ruta de la imagen de portada
              width: 500,
              height: 500,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoIntro()),
                );
              },
              child: Text('Video introductorio'),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContratameScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class VideoIntro extends StatefulWidget {
  @override
  _VideoIntroState createState() => _VideoIntroState();
}

class _VideoIntroState extends State<VideoIntro> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/kurokotrailer.mp4')
      ..initialize().then((_) {
        _controller.play(); // Reproduce automáticamente el video
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video introductorio'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  SizedBox(height: 10),
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
                      SizedBox(width: 10),
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
              )
            : CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
