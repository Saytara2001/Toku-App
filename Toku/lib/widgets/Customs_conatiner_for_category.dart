import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final String image;
  final String japaneseName;
  final String englishName;
  final Color color;
  final String sound;
  const CustomContainer({
    @required this.image,
    @required this.japaneseName,
    @required this.englishName,
    @required this.color,
    @required this.sound,
  });

  @override
  Widget build(BuildContext context) {
    return (image != null)? Container(
      color: color,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            color: Color(0xFFFFF4E4),
            child: Image(
              image: AssetImage(image),
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  japaneseName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text(englishName,style:TextStyle(color: Colors.white) )
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: IconButton(
                  onPressed: (){
                    AudioCache player  =AudioCache();
                    player.play(sound);
                  },
                  icon: Icon(Icons.play_arrow,color:Colors.white,),
                ),
              ),
            ),
          )
        ],
      ),
    ):Container(
      color:color,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  japaneseName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(englishName),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child:IconButton(
                  onPressed: (){
                    AudioCache player  =AudioCache();
                    player.play(sound);
                  },
                  icon: Icon(Icons.play_arrow,color:Colors.white,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}