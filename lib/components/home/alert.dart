import 'package:flutter/material.dart';

class AlertComponent extends StatelessWidget {
  const AlertComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.warning),
              Text("Farm Process alerts"),
            ],
          ),
        ),
        Container(
          color: const Color(0xffd3d3d3),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 200,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  items: ["All"].map((e) => DropdownMenuItem<String>(child: Text(e))).toList(),
                  onChanged: (val) {}),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Initial Setup: Payday for Pay Yourself"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
