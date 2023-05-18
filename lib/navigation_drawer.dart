import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("search"),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.flutter_dash_rounded,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.snapchat,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(child: Text('Rate Us')),
                  const PopupMenuItem(child: Text('Contact Us')),
                  const PopupMenuItem(child: Text('about us')),
                  const PopupMenuItem(child: Text('Logout'))
                ];
              })
            ],
          )
        ],
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
              titleTextStyle: TextStyle(color: Colors.cyan),
              subtitleTextStyle: TextStyle(color: Colors.cyan),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("email"),
              subtitle: Text("name@gmail.com"),
              trailing: Icon(Icons.send),
              titleTextStyle: TextStyle(color: Colors.cyan),
              subtitleTextStyle: TextStyle(color: Colors.cyan),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("about"),
              subtitle: Text("Contact Us"),
              trailing: Icon(Icons.call),
              titleTextStyle: TextStyle(color: Colors.cyan),
              subtitleTextStyle: TextStyle(color: Colors.cyan),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.send),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.cyan,
        color: Colors.amber,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );
  }
}
