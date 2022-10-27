import 'package:flutter/material.dart';

import '../utils/colors_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page=0;
  onPageChanged(int page){
    setState(() {
      _page=page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text("Meet @ Chat"),
        centerTitle: true,

      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        onTap: onPageChanged,
        currentIndex: _page,
        backgroundColor: fotterColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.comment_bank),
            label: "meet @ Char"

          ),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock),
            label: "Metting"

          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
            label: "Contact"

          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined ),
            label: "Settings"

          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [

            ],
          )
        ],
      )
    );
  }
}
