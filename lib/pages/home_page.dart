// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:netflix_app/widgets/lanzamientos_widget.dart';
import 'package:netflix_app/widgets/tendencias_widget.dart';
import '../widgets/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.all(10.0),
            width: 10.0,
            height: 10.0,
            child: Image.asset('assets/netflix_logo.png'),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/perfil.png'),
                )),
          ],
          backgroundColor: Colors.black.withOpacity(0.6),
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            labelPadding: const EdgeInsets.only(left: 30, right: 30),
            indicatorColor: Colors.transparent,
            tabs: [
              const Tab(child: Text('Series')),
              const Tab(child: Text('Peliculas')),
              Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('Categorias'),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white70,
          child: const Icon(Icons.reset_tv),
        ),
        body: obtenerHome(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: 'Inicio', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Juegos', icon: Icon(Icons.games)),
            BottomNavigationBarItem(
                label: 'Nuevo', icon: Icon(Icons.play_lesson)),
            BottomNavigationBarItem(label: 'Para reir', icon: Icon(Icons.face)),
            BottomNavigationBarItem(
                label: 'Descargas', icon: Icon(Icons.download)),
          ],
        ),
      ),
    );
  }

  Widget obtenerHome() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(size: size),
            const SizedBox(
              height: 30,
            ),
            const LanzamientosWidget(),
            const SizedBox(
              height: 30,
            ),
            const TendenciasWidget(),
          ],
        ),
      ),
    );
  }
}
