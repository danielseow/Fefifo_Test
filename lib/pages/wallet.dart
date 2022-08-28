import 'package:fefifo_test/bloc/post_bloc.dart';
import 'package:fefifo_test/components/common/drawer.dart';
import 'package:fefifo_test/components/wallet/first_screen.dart';
import 'package:fefifo_test/components/wallet/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> with TickerProviderStateMixin {
  late TabController tabPageSelectorController;
  PageController pageController = PageController(initialPage: 0);
  PageController page2Controller = PageController(initialPage: 0);
  final PostBloc _postBloc = PostBloc();

  @override
  void initState() {
    _postBloc.add(RequestPostData());
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
      appBar: AppBar(title: const Text("Fund Management")),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: PageView(
            controller: pageController,
            onPageChanged: ((value) {
              tabPageSelectorController.animateTo(value,
                  duration: const Duration(milliseconds: 300), curve: Curves.ease);
              page2Controller.animateToPage(value,
                  duration: const Duration(milliseconds: 300), curve: Curves.ease);
            }),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Total Balance"),
                  Text("RM 0.00"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Harvest Sale Revenue Receivable"),
                  Text("RM 0.00"),
                ],
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: TabPageSelector(
            controller: tabPageSelectorController,
            borderStyle: BorderStyle.none,
            indicatorSize: 8,
            color: const Color(0xff9e9e9e),
            selectedColor: Colors.black,
          ),
        ),
        Expanded(
            flex: 2,
            child: BlocProvider(
              create: (context) => _postBloc,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: page2Controller,
                children: const [
                  /// Page 1
                  FirstScreen(),

                  /// Page 2
                  SecondScreen()
                ],
              ),
            ))
      ]),
    );
  }
}
