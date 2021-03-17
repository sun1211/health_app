import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

Container notificationCard() {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Color(0xFFBF4954),
      // gradient: redGradient,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: Icon(
        LineAwesomeIcons.calendar_check_o,
        color: Colors.white,
        size: 32,
      ),
      title: Text(
        'Your Visit with \nDr Kyecera',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: OutlineButton(
        onPressed: () {},
        color: Colors.transparent,
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        child: Text(
          'Review & Add Notes',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
