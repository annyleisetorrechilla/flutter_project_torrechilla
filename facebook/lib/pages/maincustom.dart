import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/notification.dart';
import 'package:flutter/material.dart';

class Maincustom extends StatefulWidget {
  const Maincustom({super.key});

  @override
  State<Maincustom> createState() => _MaincustomState();
}

class _MaincustomState extends State<Maincustom> {
  int selectedIndex = 0;

  List pages = [
    Newsfeed(),
    FriendsPage(),
    MarketplacePage(),
    NotificationPage(),
    MenuPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
        BottomNavigationBarItem( icon: Icon(Icons.ondemand_video), label: "Reels"),
        BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "Market"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        BottomNavigationBarItem(
          label: "Menu",
          icon: CircleAvatar(
            backgroundImage: AssetImage("asset/profile/prof1.jpeg"),
          )),
        ]),
    );
  }
}