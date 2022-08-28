import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.account_circle_outlined),
              SizedBox(
                width: 10,
              ),
              Text("My To-Do Lists"),
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
                  items: ["MY_GUN3-P1, C1"]
                      .map((e) => DropdownMenuItem<String>(child: Text(e)))
                      .toList(),
                  onChanged: (val) {}),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: const Color(0xffF5F5F5),
          child: Row(children: const [
            Text("SECTIONS: A"),
            Spacer(),
          ]),
        )
      ],
    );
  }
}
