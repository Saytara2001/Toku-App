import 'package:flutter/material.dart';
import 'package:project_4/models/numbers_models.dart';
import 'package:project_4/widgets/Customs_conatiner_for_category.dart';

class PhrasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Phrases'),
      ),
      body:Container(
        color: Color(0XFFFFFFB5),
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            childAspectRatio: orientation == Orientation.portrait ? 3.7 : 3.8,
            crossAxisSpacing: 1 ,
            mainAxisSpacing: 1,
            children: List.generate(Pharses.length, (index) {
              return CustomContainer(
                englishName: Pharses[index].englishName,
                japaneseName: Pharses[index].japaneseName,
                image: Pharses[index].image,
                color: Colors.lightBlue,
                sound: Pharses[index].sound,
              );
            }),
          );
        }),
      ),
    );
  }
}
/*
ListView.builder(itemBuilder: (context, index) {
          return CustomContainer(
            image: Pharses[index].image,
            englishName: Pharses[index].englishName,
            japaneseName: Pharses[index].japaneseName,
            color: Colors.lightBlue,
            sound: Pharses[index].sound,
          );
        },
        itemCount: Pharses.length,
      ),
 */