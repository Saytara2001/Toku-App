import 'package:flutter/material.dart';
import 'package:project_4/models/numbers_models.dart';
import 'package:project_4/widgets/Customs_conatiner_for_category.dart';

class ColorPage extends StatelessWidget {
  /*   gridViewForRotate(Orientation orientation) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait? 1 : 2, mainAxisSpacing: .5, crossAxisSpacing: 4,childAspectRatio: 4,
      ),
      // shrinkWrap: false,
      itemBuilder: (context, index) {
        return CustomContainer(
          image:ColorsList[index].image,
          englishName: ColorsList[index].englishName,
          japaneseName: ColorsList[index].japaneseName,
          color: Colors.deepPurple,
        );
      },
      itemCount: ColorsList.length,
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Colors'),
      ),
      body: Container(
        color: Color(0XFFFFFFB5),
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            childAspectRatio: orientation == Orientation.portrait ? 3.7 : 3.8,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            children: List.generate(ColorsList.length, (index) {
              return CustomContainer(
                englishName: ColorsList[index].englishName,
                japaneseName: ColorsList[index].japaneseName,
                image: ColorsList[index].image,
                color: Colors.deepPurple,
                sound: ColorsList[index].sound,
              );
            }),
          );
        }),
      ),
    );
  }
}
