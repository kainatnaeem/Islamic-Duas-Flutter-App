import 'package:flutter/material.dart';

import '../../views/dua_screen.dart';

class CustomGridItem extends StatelessWidget {
  final String item;
   final String duas;
  final Color color;
  CustomGridItem({required this.item, required this.color, required this.duas});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DuaScreen(item:item, duas: duas),
                ),
              );},
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            item,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontFamily: 'Nexa',
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }
}
