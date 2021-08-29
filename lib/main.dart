import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MainModel>(
        create:(_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            title: Text(
              'コリアンダー',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            color: Colors.red,
            child: Consumer<MainModel>(
              builder: (context, model,child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text(model.name,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    ),
                    ElevatedButton(onPressed: (
                        ){
                      model.changeText();
                    },
                    child: Text(model.text,
                    style: TextStyle(
                      fontSize: 30,

                    ),
                    ),
                    ),
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
