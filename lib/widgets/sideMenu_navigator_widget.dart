
// ignore_for_file: library_private_types_in_public_api

import 'package:flix_cine/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  

  toggleMenu([bool end = false]) {
    if (end) {
      final state = _endSideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    } else {
      final state0 = _sideMenuKey.currentState!;
      if (state0.isOpened) {
        state0.closeSideMenu();
      } else {
        state0.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true,
      background: const Color.fromARGB(255, 37, 37, 37), // end side menu
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: buildMenu(),
      ),
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        inverse: true,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (isOpened) {
          setState(() => isOpened = isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: Scaffold(
            body: Column(
              children: [
                    Padding(
                      padding: const EdgeInsets.only(top:25.0, left: 16.0, right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                        const Search(),

                        IconButton(onPressed:  () => toggleMenu(true),
                        icon: const Icon(Icons.menu, size: 32.0,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Ian Peres",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person, size: 27.0, color: Colors.white),
            title: const Text("Perfil", style: TextStyle(
              fontSize: 18.0
            ),),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.star_border, size: 27.0, color: Colors.white),
            title: const Text("Favoritos", style: TextStyle(
              fontSize: 18.0
            ),),
            textColor: Colors.white,
            dense: true,
            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 27.0, color: Colors.white),
            title: const Text("Configurações", style: TextStyle(
              fontSize: 18.0
            ),),
            textColor: Colors.white,
            dense: true,
            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.insert_emoticon,
                size: 27.0, color: Colors.white),
            title: const Text("Sobre nós", style: TextStyle(
              fontSize: 18.0
            ),),
            textColor: Colors.white,
            dense: true,
            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}