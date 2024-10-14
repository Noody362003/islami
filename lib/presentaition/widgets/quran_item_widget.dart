import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/core/routes_manager.dart';

import '../../core/colors_manager.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget({super.key,required this.suraData});
  SuraItem suraData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, RoutesManager.quranDetailsRoute,
          arguments: suraData
          );
        },
        child: IntrinsicHeight(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(suraData.suraName,
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              VerticalDivider(
                width: 4,
                thickness: 4,
                color: ColorsManager.goldColor,
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${suraData.versesNumber}',
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.center,
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SuraItem {
  String suraName;
  int versesNumber;
  int index;
  SuraItem({required this.index,required this.versesNumber,required this.suraName});
}
