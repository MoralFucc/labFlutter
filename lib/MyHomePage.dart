import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var drawerItems;
  
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          backgroundColor: Colors.grey[700],
        ),
        bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 77, 75, 70),
        indicatorColor: const Color.fromARGB(255, 58, 54, 53),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 25,
            ),
            label: 'Home',
            

            // labelStyle: TextStyle(color: Colors.redAccent),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.assessment_rounded,
              color: Colors.white,
              size: 25,
              
            ),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            label: 'Create',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.announcement,
              color: Colors.white,
              size: 25,
            ),
            icon: Icon(
              Icons.announcement_outlined,
              color: Colors.white,
              size: 25,
            ),
            label: 'Feed',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 25,
            ),
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 25,
            ),
            label: 'Community',
            ////////////////////// Navigator.pushNamed(context, routeName)
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: const Color.fromARGB(255, 58, 54, 53),
          alignment: Alignment.center,
          child: const Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
             Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Text 1',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        ),
        Container(
          color: const Color.fromARGB(255, 58, 54, 53),
          alignment: Alignment.center,
          child: const Text('Page 2'),
          
        ),
        Container(
          color: const Color.fromARGB(255, 58, 54, 53),
          alignment: Alignment.center,
          child: const Text('Page 3'),
          
        ),
        Container(
          color: const Color.fromARGB(255, 58, 54, 53),
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
        Container(
          color: const Color.fromARGB(255, 58, 54, 53),
          alignment: Alignment.center,
          child: const Text('Page 5'),
        ),
      ][currentPageIndex],
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 196, 193, 193),
          child: ListView(
            children:  [
              const CircleAvatar(
                radius: 33,
                backgroundColor: Color.fromARGB(255, 116, 113, 113),
                child: Icon(
                  Icons.account_circle,
                  size: 65.0,
                  color: Colors.black87,
                  ),
              ),
                ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(Icons.assessment_rounded), 
                  title: const Text('Search'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/MySearch');
                  },
                ),
                ListTile(
                  tileColor: Color.fromARGB(108, 71, 185, 25),
                  iconColor: Colors.black,
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Add'),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/add');
                  },
                ),
                ListTile(
                  tileColor: Color.fromARGB(108, 71, 185, 25),
                  iconColor: Colors.black,
                  leading: const Icon(Icons.favorite),
                  title: const Text('Add'),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/add');
                  },
                ),
                ListTile(
                  tileColor: Color.fromARGB(108, 71, 185, 25),
                  iconColor: Colors.black,
                  leading: const Icon(Icons.favorite),
                  title: const Text('Add'),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/add');
                  },
                ),
                ListTile(
                  tileColor: Color.fromARGB(108, 71, 185, 25),
                  iconColor: Colors.black,
                  leading: const Icon(Icons.favorite),
                  title: const Text('Add'),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/add');
                  },
                ),
                ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(Icons.favorite),
                  title: const Text('Add'),
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
                  onTap: () {
                    // Открыть страницу поиска
                    Navigator.pushNamed(context, '/add');
                  },
                ),
            ],
          ),
        ),
      ),
      
    );
  }
}


