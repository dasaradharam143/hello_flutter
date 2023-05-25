import 'package:flutter/material.dart';

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
  List<String> weeklySummary = [
    'kgs',
    'litres',
    'grams',
    'units',
    'dozens',
    'pages',
    'size'
  ];
  List<int> reorder = [2, 3, 5, 10, 15, 20, 30, 50];

  String? selectedUnitsValue;
  dynamic selectedReOrder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: DropdownButton(
              underline: Container(),
              hint: const Text('Select Units'),
              value: selectedUnitsValue,
              onChanged: (value) {
                setState(() {
                  selectedUnitsValue = value;
                });
              },
              items: weeklySummary.map((listItem) {
                return DropdownMenuItem(
                  value: listItem,
                  child: Text(listItem),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: DropdownButton(
              underline: Container(),
              hint: const Text('Select Re-order'),
              value: selectedReOrder,
              onChanged: (value) {
                setState(() {
                  selectedReOrder = value;
                });
              },
              items: reorder.map((listItem) {
                return DropdownMenuItem(
                  value: listItem,
                  child: Text(listItem.toString()),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
