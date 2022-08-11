import 'package:flutter/material.dart';
import 'package:drift_front_end/add_address_widget.dart';
import 'package:drift_front_end/ui/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DriftHome(title: 'Drift Test Application'),
    );
  }
}

class DriftHome extends StatefulWidget {
  const DriftHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DriftHome> createState() => _DriftHome();
}

void process() {
  print("Submit was pressed");
}

class _DriftHome extends State<DriftHome> {
  var src_widget2 = Container(
    child: Expanded(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Src Address',
              hintText: 'Enter Address',
            ),
            autofocus: false,
          ),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Src City',
              hintText: 'Enter City',
            ),
            autofocus: false,
          )),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Src State',
              hintText: 'Enter State',
            ),
            autofocus: false,
          )),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Src Zip',
              hintText: 'Enter Zip',
            ),
            autofocus: false,
          )),
        ],
      ),
    ),
  );
  var dst_widget2 = Container(
    child: Expanded(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Dst Address',
              hintText: 'Enter Address',
            ),
            autofocus: false,
          ),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Dst City',
              hintText: 'Enter City',
            ),
            autofocus: false,
          )),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Dst State',
              hintText: 'Enter State',
            ),
            autofocus: false,
          )),
          Container(
              child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Dst Zip',
              hintText: 'Enter Zip',
            ),
            autofocus: false,
          )),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: appDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text("Insert your Source and Destination Addresses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Spacer(),
              src_widget2,
              dst_widget2,
              Spacer(),
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  onPressed: process,
                  child: Text("Submit"),
                )),
          ],
        ),
      ),
    );
  }
}
