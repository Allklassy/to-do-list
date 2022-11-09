
import 'package:flutter/material.dart';
import 'package:todo_app/widget/calender_widget.dart';
import 'package:todo_app/widget/home_widget.dart';
import 'package:todo_app/widget/profile_widget.dart';
import 'package:todo_app/widget/setting_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

 static const List _widgetlist = [
        Homewidget(),
        CalenderWidget(),
        ProfileWidget(),
        SettingWidget()
  ];
 static const List _appBarTextList = [
          "Done Deal",
          "Calender",
          "Profile",
          "Settings"

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
        _appBarTextList[selectedindex],
        style: const TextStyle(
          fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.bold,
        ),
        
        
        ),
      ),
      body: _widgetlist[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
             ),
              BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
              ),
              BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
              ),
            ],
            currentIndex: selectedindex,
            selectedItemColor: Colors.blue,
            onTap: (value) {
              setState(() {
                selectedindex = value;
              });
            },
        
      ),
    );
  }
}