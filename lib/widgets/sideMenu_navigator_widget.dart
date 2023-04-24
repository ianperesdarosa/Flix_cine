
// ignore_for_file: library_private_types_in_public_api, unused_field
import 'package:flix_cine/widgets/home_widget.dart';
import 'package:flix_cine/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../views/welcome.dart';


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

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];
    
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true,
      background: const Color.fromARGB(255, 77, 6, 90), // end side menu
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
            backgroundColor: const Color.fromARGB(255, 29, 29, 29),
            bottomNavigationBar: BottomNavigationBar(    
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Color.fromARGB(255, 53, 53, 53),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.rocket),
                    label: 'Lançamentos',
                    backgroundColor: Color.fromARGB(255, 53, 53, 53),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'Favoritos',
                    backgroundColor: Color.fromARGB(255, 53, 53, 53),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month),
                    label: 'Calendário',
                    backgroundColor: Color.fromARGB(255, 53, 53, 53),
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.purple,
                onTap: _onItemTapped,
              ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(top:30.0),
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 101, 6, 117),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                          const Padding(
                            padding: EdgeInsets.only(
                              left:10.0
                              ),
                            child: Search(),
                          ),
                                  
                          Padding(
                            padding: const EdgeInsets.only(right:10.0),
                            child: IconButton(onPressed:  () => toggleMenu(true),
                              icon: const Icon(Icons.menu, size: 32.0,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                                      ),
                    ),
                  
                  const HomeWidget(),

                ],
              ),
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
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset(
                    'assets/img/teste_img.jpg',
                      fit: BoxFit.cover,
                      height: 70.0,
                   ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  "Olá, Ian Peres",
                  style: TextStyle(color: Colors.white,
                  fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 20.0),
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
            leading: const Icon(Icons.sunny,
                size: 27.0, color: Colors.white),
            title: const Text("Mudar Tema", style: TextStyle(
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
           ListTile(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const Welcome(),
                ),
              );
            },
            leading: const Icon(Icons.arrow_back,
                size: 27.0, color: Colors.white),
            title: const Text("Sair", style: TextStyle(
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