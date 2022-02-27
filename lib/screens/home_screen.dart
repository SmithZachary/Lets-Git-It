import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Lets Git It',
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: const [
                ///TODO: add navigation to other screens for each tile
                ListTile(
                  title: Text('Tile 1'),
                ),
                ListTile(
                  title: Text('Tile 2'),
                ),
                ListTile(
                  title: Text('Tile 3'),
                ),
                ListTile(
                  title: Text('Tile 4'),
                ),
                ListTile(
                  title: Text('Tile 5'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
