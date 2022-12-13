import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Profil.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/800px-Twitter-logo.svg.png",
                  )
                ]))),
        body: const Center(
          child: Text('My Page!'),
        ),
        drawer: const NavigationDrawer());
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
          padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ));

  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline_rounded),
            title: const Text('Profil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Profil');
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat_outlined),
            title: const Text('Sujets'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Sujets');
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text('Signets'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Signets');
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_rounded),
            title: const Text('Listes'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Listes');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Cercle Twitter'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/CercleTwitter');
            },
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            title: const Text('Creator Studio'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Outils professionnels'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Paramètres et support'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline_rounded),
            onTap: () {},
          ),
        ],
      );
}
