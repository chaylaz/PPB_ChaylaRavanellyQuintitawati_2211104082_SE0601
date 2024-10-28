import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
// import 'form.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Form',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const FormExample(),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Contoh Tab Bar Widget'),
//             bottom: TabBar(
//               tabs: [
//                 Tab(text: 'Home'),
//                 Tab(text: 'Menu'),
//                 Tab(text: 'Settings'),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Center(child: Text('Ini adalah halaman Home')),
//               Center(child: Text('Ini adalah halaman Menu')),
//               Center(child: Text('Ini adalah halaman Settings')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





void main() {
  runApp(MyBottomNavBar());
}

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Index 0: Home',
          style: optionStyle,
        ),
        ElevatedButton(
          onPressed: () {
            print('Tombol Elevated di Home ditekan!');
          },
          child: Text('Klik Saya'),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Index 1: Business',
          style: optionStyle,
        ),
        ElevatedButton(
          onPressed: () {
            print('Tombol Elevated di Business ditekan!');
          },
          child: Text('Klik Saya'),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Index 2: School',
          style: optionStyle,
        ),
        ElevatedButton(
          onPressed: () {
            print('Tombol Elevated di School ditekan!');
          },
          child: Text('Klik Saya'),
        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Bar Sample'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

