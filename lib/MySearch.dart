import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  // const MySearch({Key? key}) : super(key: key);
  final _scrollController = ScrollController();
  int currentPageIndex = 0;

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/MySearch': (context) => MySearch(),
      },
    home: Scaffold(
      appBar: AppBar(
        title: Text('MySearch'),
        backgroundColor: Colors.grey[700],
      ),
      body: Scrollbar(
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              children: [
                for (int i = 2; i < 3; i++)
                   Container(
                    // color: Color.fromARGB(255, 58, 53, 57),
                    alignment: Alignment.center,
                    child: const Column(
                    children: <Widget> [
                          Center(
                            child: Text('First Page'),
                          ),
                          Center(
                            child: Text('Second Page'),
                          ),
                          Center(
                            child: Text('Third Page'),
                          ),
                      Divider(
                        color: Color.fromARGB(255, 255, 0, 221),
                        height: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Divider(
                        color: Color.fromARGB(255, 255, 0, 221),
                        height: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      // Text('ddddddddddd'),
                      Divider(
                        color: Color.fromARGB(255, 255, 0, 221),
                        height: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Divider(
                        color: Color.fromARGB(255, 255, 0, 221),
                        height: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                      Text('ddddddddddd'),
                    ],
                  ),
                ),
              ],
            ),
          ),
      drawer: Drawer(
        child: ListView (
          children: [
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
              leading: const Icon(Icons.home), 
              title: const Text('Home'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999999)),
              onTap: () {
                // Открыть страницу поиска
                Navigator.pushNamed(context, '/');
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
        )
      ),
    )
    );
  }
}
