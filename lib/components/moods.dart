import 'package:flutter/material.dart';
import 'package:health_app/models/mood_list.dart';

class MoodsSelector extends StatefulWidget {
  MoodsSelector({Key key}) : super(key: key);

  @override
  _MoodsSelectorState createState() => _MoodsSelectorState();
}

class _MoodsSelectorState extends State<MoodsSelector> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          moodList.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      moodList[index].icon,
                      size: 36,
                      color:
                          activeIndex == index ? Colors.purple : Colors.black45,
                    ),
                  ),
                  Text(
                    moodList[index].name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color:
                          activeIndex == index ? Colors.purple : Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
