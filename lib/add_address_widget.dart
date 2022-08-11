import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:drift_front_end/ui/drawer.dart';

class AddAddressWidget extends StatefulWidget {
  const AddAddressWidget({Key? key}) : super(key: key);

  @override
  State<AddAddressWidget> createState() => _AddAddressWidgetState();
}

void process() {
  print("Process Button was pressed");
}

var addressForm = Container(
  child: Expanded(
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Address',
            hintText: 'Enter Address',
          ),
          autofocus: false,
        ),
        Container(
            child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'City',
            hintText: 'Enter City',
          ),
          autofocus: false,
        )),
        Container(
            child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'State',
            hintText: 'Enter State',
          ),
          autofocus: false,
        )),
        Container(
            child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Zip',
            hintText: 'Enter Zip',
          ),
          autofocus: false,
        )),
      ],
    ),
  ),
);

class _AddAddressWidgetState extends State<AddAddressWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Add Address")),
          drawer: const appDrawer(),
          body: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: Text("Insert New Address to Store",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 30),
              Row(
                children: [Spacer(), addressForm, Spacer()],
              ),
              const SizedBox(height: 30),
              Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: process,
                    child: Text("Submit"),
                  )),
            ],
          )),
    );
  }
}
