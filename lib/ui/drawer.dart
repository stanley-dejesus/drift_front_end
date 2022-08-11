import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:drift_front_end/main.dart';
import 'package:drift_front_end/add_address_widget.dart';
import 'package:flutter/material.dart';

class appDrawer extends StatelessWidget {
  const appDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1000,
      child: Column(children: [
        SizedBox(
          height: 100,
        ),
        ListTile(
          dense: true,
          title: Text("Direction"),
          leading: Icon(Icons.home_sharp),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DriftHome(title: "Drift Test Application")),
            );
          },
        ),
        ListTile(
          dense: true,
          title: Text("Add Address"),
          leading: Icon(Icons.add_box_rounded),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddAddressWidget()));
          },
        ),
      ]),
    );
  }
}
