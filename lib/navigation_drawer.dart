import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/main.dart';

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
      // body: SafeArea(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Container(
      //         color: Colors.tealAccent,
      //         alignment: Alignment.center,
      //         width: 250,
      //         height: 500,
      //         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      //         // margin: EdgeInsets.symmetric(vertical: 60),
      //         child: const Image(
      //             image: NetworkImage(
      //                 'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
      //       ),
      //       Container(
      //         color: Colors.tealAccent,
      //         alignment: Alignment.center,
      //         width: 250,
      //         height: 500,
      //         padding: const EdgeInsets.all(30),
      //         child: const Image(
      //           image: NetworkImage(
      //               'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      //         ),
      //       ),
      //       Container(
      //         color: Colors.tealAccent,
      //         alignment: Alignment.center,
      //         width: 250,
      //         height: 500,
      //         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      //         child: const Image(
      //           image: NetworkImage(
      //               'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.tealAccent,
            ],
          ),
        ),
        child: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                height: 200,
                width: 200,
              )
            ],
          ),
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
              subtitle: Text(
                "name",
                style: TextStyle(color: Colors.orangeAccent),
              ),
              trailing: Icon(Icons.edit),
              titleTextStyle: TextStyle(color: Colors.cyan),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("email"),
              subtitle: Text(
                "name@gmail.com",
                style: TextStyle(color: Colors.orangeAccent),
              ),
              trailing: Icon(Icons.send),
              titleTextStyle: TextStyle(color: Colors.cyan),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("about"),
              subtitle: Text(
                "Contact Us",
                style: TextStyle(color: Colors.orangeAccent),
              ),
              trailing: Icon(Icons.call),
              titleTextStyle: TextStyle(color: Colors.cyan),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyWidget()));
        },
        child: const Icon(Icons.send),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.tealAccent,
        color: Colors.amber,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, color: Colors.tealAccent),
          Icon(Icons.account_circle, color: Colors.tealAccent),
          Icon(Icons.person_rounded, color: Colors.tealAccent),
          Icon(Icons.settings, color: Colors.tealAccent),
          Icon(Icons.favorite, color: Colors.tealAccent),
          Icon(Icons.help, color: Colors.tealAccent),
        ],
        
      ),
      backgroundColor: Colors.tealAccent,
    );
  }
}
