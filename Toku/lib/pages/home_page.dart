import 'package:flutter/material.dart';
import 'package:project_4/pages/Colors_page.dart';
import 'package:project_4/pages/family_numbers.dart';
import 'package:project_4/pages/phrases.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Toku'),
            backgroundColor: Colors.brown,
          ),
          body: Container(
            color: Color(0XFFFFFFB5),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      'Numbers',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return FamilyNumbers();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.green,
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Family Members',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return ColorPage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      'Colors',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return PhrasesPage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      'Phrases',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
