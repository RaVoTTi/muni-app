import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/screens/noticias.dart';
import 'package:municipalidad_de_malargue/screens/comunicados.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 15);
  @override
  Widget build(BuildContext context) {
    final name = 'Municipalidad';
    final email = 'de Malargüe';
    final urlImage =
        'https://pbs.twimg.com/profile_images/1322735686856880128/81qqDWPJ_400x400.jpg';

    return Drawer(
      child: Material(
        color: Color(0xff6a2b86),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Últimas Noticias',
                    icon: Icons.new_releases,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Comunicados Importantes',
                    icon: Icons.gps_fixed,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Clima',
                    icon: Icons.cloud,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'V.2.0. Esta aplicación es desarrollada por el Área de Investigación y desarrollo de software.',
                    icon: Icons.developer_mode,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
     String urlImage,
     String name,
     String email,
     VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(image: NetworkImage('https://turismo.malargue.gov.ar/wp-content/uploads/2019/11/payuna-home.jpg'),fit: BoxFit.cover),
          ),
          padding: padding.add(EdgeInsets.symmetric(vertical: 120)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );


  Widget buildMenuItem({
     String text,
     IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RSSDemo(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Comunicados(),
        ));
        break;
    }
  }
}
