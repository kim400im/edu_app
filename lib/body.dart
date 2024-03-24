import 'package:edu_app/screen/home_screen.dart';
import 'package:edu_app/screen/menu_screen.dart';
import 'package:edu_app/screen/my_screen.dart';
import 'package:flutter/material.dart';

class EduBody extends StatelessWidget {

  final int index;

  const EduBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if(index == 0){
      return HomeScreen();
    }else if(index == 1){
      return MenuScreen();
    }else{
      return MyScreen();
    }
  }
}
