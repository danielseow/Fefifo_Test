import 'package:flutter/material.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.chat_bubble),
              Text("Notifications"),
            ],
          ),
        ),
        const Divider(height: 0),
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                title: Text(
                  "A total of RM 100.00 has been deducted from your Wallet to Fefifo for cheque or bank transfer to you. Enquire at Fefifo farm site office",
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "A total of RM 100.00 has been deducted from your Wallet to Fefifo for cheque or bank transfer to you. Enquire at Fefifo farm site office",
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "A total of RM 100.00 has been deducted from your Wallet to Fefifo for cheque or bank transfer to you. Enquire at Fefifo farm site office",
                ),
              ),
              Divider(),
            ],
          ),
        )
      ],
    );
  }
}
