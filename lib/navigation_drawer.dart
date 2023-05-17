import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
      body: Container(
          // child: Text('content'),
          ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('hello'),
              accountEmail: Text('hello@gmail.com'),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),),
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
              trailing: Icon(Icons.question_answer),
            ),
          ],
        ),
      ),
    );
  }
}
