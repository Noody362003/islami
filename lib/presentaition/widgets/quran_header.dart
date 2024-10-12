import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors_manager.dart';
import '../../core/strings_manager.dart';

class QuranTapHeaderWidget extends StatelessWidget {
  const QuranTapHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                width: 3,
                color: ColorsManager.goldColor,

              )
          )
      ),
      child: IntrinsicHeight(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(StringsManager.chapterLabel,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ),
            VerticalDivider(
              width: 4,
              thickness: 4,
              color: ColorsManager.goldColor,
            ),
            Expanded(
              child: Text(StringsManager.versesLabel,
              style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
