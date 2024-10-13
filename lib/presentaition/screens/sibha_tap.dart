import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/strings_manager.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap>
    with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  double rotationAngle = 0.0;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  int counter = 0;
  List<String> tasbeha = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله أكبر',
    'لا حول ولا قوة الا بالله'
  ];
  int sebha_index = 0;

  void _incrementCounter() {
    setState(() {
      if (counter < 33) {
        counter++;
        rotationAngle += (1 / 33);
        _controller.forward(from: 0);
      } else {
        counter = 0;
        rotationAngle = 0; // Reset rotation angle
        _controller.forward(from: 0); // Reset rotation
        if (sebha_index < tasbeha.length - 1) {
          sebha_index++;
        } else {
          sebha_index = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40), // Adjust the vertical spacing
            child: Stack(
              alignment: Alignment.center, // Center everything
              children: [
                Positioned(
                  top: 0, // Move it higher
                  child: Image(image: AssetImage(AssetsManager.sebhaHeadTapImageLight)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50), // Add margin to separate the beads
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(rotationAngle),
                    child: Image(image: AssetImage(AssetsManager.sebhaBodyTapImageLight)),
                  ),
                ),
              ],
            ),
          ),

          Text(
            StringsManager.tasdehaLabel,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(color: Color(0xFFA67FF)),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: _incrementCounter,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFC9A46F), // Background color (soft brown/tan)
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40), // Padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
            ),
            child: Text(
              "${tasbeha[sebha_index]}",
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 20, // Font size similar to design
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
          ),
        ],
      ),
    );
  }
}
