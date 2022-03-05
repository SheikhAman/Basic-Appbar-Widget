import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  BasicAppbar(),
    );
  }
}
class BasicAppbar extends StatelessWidget {
  const BasicAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: const Icon(Icons.tag_faces),
        title: const Text("Sample title"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.directions_bike),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.directions_bus),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text('Boat')),
                const PopupMenuItem(child: Text('Train'))
              ];
            },
          )
        ],
      ),
      body: const Center(child: Text("Hello")),
    );
  }
}
Write to Sheikh Adnan
