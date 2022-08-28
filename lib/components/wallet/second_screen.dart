import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
          color: Colors.transparent,
        ),
        const Text("Receivables"),
        const Divider(
          thickness: 1,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text("No Receivables")],
          ),
        )
      ],
    );
  }
}
