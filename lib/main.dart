import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(const EduApp());
}


class EduApp extends StatelessWidget {
  const EduApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: EduHome(),
    );
  }
}



class EduHome extends StatefulWidget {
  const EduHome({super.key});

  @override
  State<EduHome> createState() => _EduHomeState();
}

class _EduHomeState extends State<EduHome> {

  late int index;

  @override
  void initState(){
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STedu', style: GoogleFonts.truculenta(color: Colors.black),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 32,)),
          IconButton(icon: Icon(Icons.notifications, size: 32,), onPressed: (){
          },),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 32,))
        ],
      ),
      body: EduBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex){
          setState(() {
            index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu, size: 28,), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 28,), label: 'My'),
        ],
      ),
    );
  }
}
