import 'package:flutter/material.dart';
import 'package:hello_flutter/BarGraph/bar_graph.dart';

/*


*/
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of weekly details
  List<double> weeklySummary = [41.3, 27.3, 139.4, 138.2, 192.3, 198.4, 100.3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SizedBox(
          height: 400,
          child: MyBarGraph(
            weeklySummary: weeklySummary,
          ),
        ),
      ),
    );
  }
}
