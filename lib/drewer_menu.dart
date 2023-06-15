

import 'package:flutter/material.dart';

class DrewerMenu extends StatefulWidget {
  const DrewerMenu({super.key});

  @override
  State<DrewerMenu> createState() => _DrewerMenuState();
}

class _DrewerMenuState extends State<DrewerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children:<Widget>[
            UserAccountsDrawerHeader(accountName: const Text('Gülden AKARSU'), accountEmail: const Text('guldenakarsu3@gaail.com'),

            currentAccountPicture: Image.network(
              'https://cdn.pixabay.com/photo/2016/10/27/13/03/turkish-flag-1774869_960_720.png'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  
                  ListTile(leading: Icon(Icons.call),title: Text("Ara"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.account_box),title: Text("Profil"),trailing: Icon(Icons.chevron_right),),
                  AboutListTile(
                    applicationName: "Projem",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "2.0",
                    child: Text("ABOUT US"),
                    applicationLegalese: null,
                    icon:Icon(Icons.keyboard),
                    aboutBoxChildren: <Widget>[
                      Text("Child 1"),
                      Text("Child 2"),
                      Text("Child 3"),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}