import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/colors_manager.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget({super.key,required this.suraName,required this.versesNumber});
  String suraName;
  int versesNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IntrinsicHeight(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(suraName,
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
                  child: Text('$versesNumber',
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
