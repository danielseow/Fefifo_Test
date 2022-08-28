import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff737478),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset("assets/images/Fefifo_F_Logo.png"),
              title: const Text(
                "Looking Good Nurul!",
                style: TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.account_circle, size: 36),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white),
                ),
              ),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/home");
                },
              ),
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                textColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: const Icon(Icons.wallet),
                title: const Text("Wallet"),
                children: [
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 26),
                    leading: const Icon(Icons.wallet),
                    title: const Text("Wallet"),
                    onTap: (() => Navigator.pushNamed(context, "/wallet")),
                  ),
                  const Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                  const ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 26),
                    leading: Icon(Icons.person),
                    title: Text("Pay Worker"),
                  ),
                  const Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: const ExpansionTile(
                textColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(Icons.inventory),
                title: Text("Inventory"),
                children: [
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 26),
                    leading: Icon(Icons.wallet),
                    title: Text("Wallet"),
                  ),
                  Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 26),
                    leading: Icon(Icons.person),
                    title: Text("Pay Worker"),
                  ),
                  Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: const ExpansionTile(
                textColor: Colors.white,
                collapsedTextColor: Colors.white,
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                leading: Icon(Icons.agriculture),
                title: Text("Crop Cycle Operations"),
                children: [
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 26),
                    leading: Icon(Icons.wallet),
                    title: Text("Wallet"),
                  ),
                  Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 26),
                    leading: Icon(Icons.person),
                    title: Text("Pay Worker"),
                  ),
                  Divider(
                    color: Color(0xff8F9093),
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
