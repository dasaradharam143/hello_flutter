import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "navigation bar",
      home: const Homepage(),
      theme: ThemeData(primarySwatch: Colors.cyan),
    ),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Bar'),
      ),
      // body: Container(),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.tealAccent,
              alignment: Alignment.center,
              width: 250,
              height: 500,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              // margin: EdgeInsets.symmetric(vertical: 60),
              child: const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
            ),
            Container(
              color: Colors.teal,
              alignment: Alignment.center,
              width: 250,
              height: 500,
              padding: const EdgeInsets.all(30),
              child: const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            Container(
              color: Colors.tealAccent,
              alignment: Alignment.center,
              width: 250,
              height: 500,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('hello'),
              accountEmail: Text('hello@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(10),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("person"),
              subtitle: Text("name"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("email"),
              subtitle: Text("name@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("about"),
              subtitle: Text("Contact Us"),
              trailing: Icon(Icons.call),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.send),
      ),
    );
  }
}
