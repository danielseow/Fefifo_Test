import 'package:fefifo_test/components/home/alert.dart';
import 'package:fefifo_test/components/common/drawer.dart';
import 'package:fefifo_test/components/home/notification.dart';
import 'package:fefifo_test/components/home/to-do.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabPageSelectorController;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    tabPageSelectorController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(title: const Text("Home")),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: ((value) => tabPageSelectorController.animateTo(value,
                      duration: const Duration(milliseconds: 300), curve: Curves.ease)),
                  children: const [
                    AlertComponent(),
                    NotificationComponent(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: const Color(0xfff2f2f2),
                padding: const EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.center,
                child: TabPageSelector(
                  controller: tabPageSelectorController,
                  borderStyle: BorderStyle.none,
                  color: const Color(0xff9e9e9e),
                  selectedColor: Colors.black,
                ),
              ),
              const Expanded(child: ToDoList()),
            ],
          )),
    );
  }
}
