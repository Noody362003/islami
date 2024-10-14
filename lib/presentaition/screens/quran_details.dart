import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/presentaition/widgets/quran_item_widget.dart';

import '../../core/assets_manager.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraData = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if(verses.isEmpty)readQuranFile(suraData.index + 1);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(AssetsManager.lightBg)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(suraData.suraName),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(itemBuilder: (context,index)=>
         Text(verses[index],),
          itemCount: verses.length,

        ),
      ),
    );
  }

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/quran_files/$index.txt');
    verses = fileContent.trim().split('\n');
    setState(() {

    });
  }
}
