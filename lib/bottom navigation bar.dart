import 'package:firstproject/HOME.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NAVIGATION extends StatefulWidget {
  const NAVIGATION({Key? key}) : super(key: key);

  @override
  State<NAVIGATION> createState() => _NAVIGATIONState();
}

class _NAVIGATIONState extends State<NAVIGATION> {
  int _selectedIndex=0;
  List<Widget> options = <Widget>[
    Home(),
    Text("page 2"),
    Text("page 3"),
    Text("page 4"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
        gap: 8,
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        padding: EdgeInsets.all(15.0),
        tabMargin: EdgeInsets.all(10.0),
        tabBackgroundColor: Colors.purpleAccent,
        duration: Duration(milliseconds: 400),
        tabs: [
          GButton(icon: Icons.home,text: "Home",),
          GButton(icon: Icons.favorite,text: "Likes",),
          GButton(icon: Icons.search,text: "Search",),
          GButton(icon: Icons.settings,text: "Settings",)
        ],
        selectedIndex : _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
    ),
    );
  }
}
// import 'package:firstproject/HOME.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// void main() => runApp(MaterialApp(
//     builder: (context, child) {
//       return Directionality(textDirection: TextDirection.ltr, child: child!);
//     },
//     title: 'GNav',
//     theme: ThemeData(
//       primaryColor: Colors.grey[800],
//     ),
//     home: Example()));
//
// class Example extends StatefulWidget {
//   @override
//   _ExampleState createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Home(),
//     Text(
//       'Likes',
//       style: optionStyle,
//     ),
//     Text(
//       'Search',
//       style: optionStyle,
//     ),
//     Text(
//       'Profile',
//       style: optionStyle,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               color: Colors.black.withOpacity(.1),
//             )
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               rippleColor: Colors.grey[300]!,
//               hoverColor: Colors.grey[100]!,
//               gap: 8,
//               activeColor: Colors.black,
//               iconSize: 24,
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.grey[100]!,
//               color: Colors.black,
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'Home',
//                 ),
//                 GButton(
//                   icon: Icons.favorite,
//                   text: 'Likes',
//                 ),
//                 GButton(
//                   icon: Icons.search,
//                   text: 'Search',
//                 ),
//                 GButton(
//                   icon: Icons.account_circle_outlined,
//                   text: 'Profile',
//                 ),
//               ],
//               selectedIndex: _selectedIndex,
//               onTabChange: (index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
