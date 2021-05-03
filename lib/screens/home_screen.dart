import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:municipalidad_de_malargue/screens/cuyobus.dart';
import 'package:municipalidad_de_malargue/screens/inicio.dart';
import 'package:municipalidad_de_malargue/screens/telefonos.dart';

import 'tramites.dart';
void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget  {
  // Light theme of your app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromRadius(100.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/cabecera.jpg'),
                            fit: BoxFit.fill))),
              ),
              actions: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook,color: Color(0xff00939d),),
                  tooltip: 'Facebook',
                  onPressed: () {
                    // ...
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram,color: Color(0xff00939d),),
                  tooltip: 'Instagram',
                  onPressed: () {
                    // ...
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.youtube,color: Color(0xff00939d),),
                  tooltip: 'Youtube',
                  onPressed: () {
                    // ...
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.microphone,color: Color(0xff00939d),),
                  tooltip: 'Radio 94.5 FM Municipal',
                  onPressed: () {
                    // ...
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.stream,color: Color(0xff00939d),),
                  tooltip: 'Menú',
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
              bottom: TabBar(
                unselectedLabelColor: Color(0xff00939d),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff00939d)),
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Inicio"),
                  Tab(icon: Icon(Icons.markunread_mailbox), text: "Trámites"),
                  Tab(icon: Icon(Icons.phone), text: "Teléfonos"),
                  Tab(icon: Icon(Icons.directions_transit), text: "CuyoBus"),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Inicio(),
              Tramites(),
              Telefono(),
              Cuyobus(),
            ],
          ),
        ),
      ),
    );
  }
}
