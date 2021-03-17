import 'package:flutter/material.dart';
import 'package:health_app/components/moods.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        //_backBgCover
        Container(
          height: 220.0,
          decoration: BoxDecoration(
            gradient: purpleGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        //_greetings
        Positioned(
          left: 20,
          bottom: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hi Sun',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'How are you feeling today ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        //moodsHolder
        Positioned(
          bottom: -30,
          child: Container(
            height: 100.0,
            width: SizeConfig.screenWidth - 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(28)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 5.5,
                    blurRadius: 5.5,
                  )
                ]),
            child: MoodsSelector(),
          ),
        )
      ],
    );
  }
}
