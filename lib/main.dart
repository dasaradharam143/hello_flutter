import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello flutter'),
          backgroundColor: Colors.deepOrange.shade500,
          leading: const Icon(Icons.home_rounded),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/16678541/pexels-photo-16678541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
