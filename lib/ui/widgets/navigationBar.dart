import 'package:flutter/material.dart';
import 'package:mandipainspiration/ui/views/about_view.dart';
import 'package:mandipainspiration/ui/views/home.dart';
import 'package:mandipainspiration/ui/views/services_view.dart';

class NavigationBar extends StatefulWidget {
  int selected;
  NavigationBar({@required this.selected});
  @override
  _NavigationBarState createState() => _NavigationBarState(selectedIndex: selected);
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex;

  _NavigationBarState({@required this.selectedIndex});

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: services',
      style: optionStyle,
    ),
    Text(
      'Index 2: about',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    if(selectedIndex == 0) {
      //home page
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }else if(selectedIndex == 1) {
      //Browser page
      Navigator.push(context, MaterialPageRoute(builder: (context) => Services_view()));
    }else if(selectedIndex == 2){
      //scanner page
      Navigator.push(context, MaterialPageRoute(builder: (context) => About_view()));
    }else{
      // dummy
    }//end if-else
  }
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'About',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.purple,
      onTap: _onItemTapped,
    );
  }
}
