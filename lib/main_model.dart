import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String text = 'おすな！';
  String name = 'HaseSho';

  void changeText(){
    text = '押してねん';
    name = 'なんで押すねん！';
    notifyListeners();
  }
}