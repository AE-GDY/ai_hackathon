import 'package:vytal_trainer_app/screens/my_bin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vytal_trainer_app/screens/transactions.dart';
import 'home_food.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: const <Widget>[
          HomeFood(),
          MyBin(),
          Transactions(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 22,
        showUnselectedLabels: true,
        selectedItemColor: Colors.greenAccent.shade400,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(
              page,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.trash),
            label: 'My Bin',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.history),
            label: 'History',
          ),
        ],
      ),
    );
  }
}

