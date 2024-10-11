import 'package:flutter/material.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/strings_manager.dart';
import 'package:islami/presentaition/screens/quran_tap.dart';
import 'package:islami/presentaition/screens/radio_tap.dart';
import 'package:islami/presentaition/screens/settings_tap.dart';
import 'package:islami/presentaition/screens/sibha_tap.dart';

import 'hadith_tap.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> taps=[
    QuranTap(),
    HadithTap(),
    RadioTap(),
    SebhaTap(),
    SettingsTap()
  ];

  int selectedTap=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsManager.lightBg)
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(

          onTap: (index){
            selectedTap=index;
            setState(() {

            });
          },
            currentIndex: selectedTap,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: StringsManager.quranLabel
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.hadethIcon)),
                  label: StringsManager.hadithLabel
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: StringsManager.radioLabel
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                  label: StringsManager.sebhaLabel
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: StringsManager.settingsLabel
              )

            ]
        ),
        body: taps[selectedTap],
      ),
    );
  }
}
