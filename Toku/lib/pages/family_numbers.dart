import 'package:flutter/material.dart';
import 'package:project_4/models/numbers_models.dart';
import 'package:project_4/widgets/Customs_conatiner_for_category.dart';

class FamilyNumbers extends StatelessWidget {
 /* gridViewForRotate(Orientation orientation) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: orientation == Orientation.portrait? 1 : 2, mainAxisSpacing: .5, crossAxisSpacing: 4,childAspectRatio: 4,
      ),
      // shrinkWrap: false,
      itemBuilder: (context, index) {
        return CustomContainer(
          image: familyList[index].image,
          englishName: familyList[index].englishName,
          japaneseName: familyList[index].japaneseName,
          color: Colors.green,
        );
      },
      itemCount: familyList.length,
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    // final double shortestSide = MediaQuery.of(context).size.shortestSide;
    // final bool useMobileLayout = shortestSide <= 360.0;
    // final Orientation orientation = MediaQuery.of(context).orientation;
    // final dta = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Family'),
      ),
      body: Container(
        color: Color(0XFFFFFFB5),
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            childAspectRatio: orientation == Orientation.portrait ? 3.7 : 3.8,
            crossAxisSpacing: 1 ,
            mainAxisSpacing: 1,
            children: List.generate(familyList.length, (index) {
              return CustomContainer(
                englishName: familyList[index].englishName,
                japaneseName: familyList[index].japaneseName,
                image: familyList[index].image,
                color: Colors.green,
                sound: familyList[index].sound,
              );
            }),
          );
        }),
      ),
    );
  }
}
