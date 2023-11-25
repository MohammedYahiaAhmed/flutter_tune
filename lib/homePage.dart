// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tune/model/tune_model.dart';

import 'views//category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<TuneModel> tunes = const
  [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff243139),
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(fontSize: 26),),
      ),
      body:   Column(
        children: tunes.map((e) => Category(tune: e),
        ).toList(),
      ),

    );
  }

  // List<Category> getCategory(){
  //   List<Category> items = [];
  //   for(var color in tuneColors){
  //     items.add(Category(color: color));
  //   }
  //   return items;
  // }
}
