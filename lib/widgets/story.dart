import 'package:flutter/material.dart';
import 'package:instaclone/theme/colors.dart';

class Story extends StatelessWidget {
  final String img;
  final String name;
  Story({required this.img, required this.name});
//see you guys in the next video
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: storyBorderColor)),
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 70,
            child: Center(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
