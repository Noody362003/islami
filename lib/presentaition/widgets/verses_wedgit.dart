import 'package:flutter/material.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key,required this.verse});
  String verse;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
      color: Theme.of(context).primaryColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
        child: Text(
            verse,textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 19),
        ),
      ),
    );
  }
}
