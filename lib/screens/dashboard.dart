import '../constants/color_palette.dart';
import '../screens/black_gold.dart';
import '../screens/cold_brew.dart';
import '../screens/gold_brew.dart';
import '../screens/mccafe.dart';
import '../screens/nescafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final colorPalette = ColorPalette();
  var _selectedScreen = 0;
  List allScreen = [BlackGold(), ColdBrew(), Nescafe(), Mccafe(), GoldBrew()];

  List isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          //all screen
          Container(
            height: screenHeight,
            width: screenWidth,
          ),
          //left menu
          Positioned(
            left: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth / 4,
              color: colorPalette.leftBarColor,
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight / 20,
                    right: screenWidth / 10,
                    child: Icon(Feather.menu),
                  ),
                  Positioned(
                    top: screenHeight / 10,
                    right: screenWidth / 25,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        width: screenHeight - (screenHeight / 6),
                        height: screenWidth / 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            screenBuilder('Black Gold', 0),
                            screenBuilder('Cold Brew', 1),
                            screenBuilder('Nescafe', 2),
                            screenBuilder('McCafe', 3),
                            screenBuilder('Gold Brew', 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //right or main screen
          Positioned(
            left: screenWidth / 4,
            child: Container(
              height: screenHeight,
              width: screenWidth - (screenWidth / 4),
              color: Colors.white,
              child: Stack(
                children: [
                  //shopping icon
                  Positioned(
                    top: screenHeight / 20,
                    right: screenWidth * 0.1,
                    child: Icon(
                      Feather.shopping_bag,
                    ),
                  ),
                  //text and search
                  Positioned(
                    top: screenHeight / 8,
                    left: screenWidth - screenWidth * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.5,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'CoffeeHouse',
                              style: GoogleFonts.bigShouldersText(
                                color: Color(0xFF23163D),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.5,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'A lot can happen over coffee.',
                              style: GoogleFonts.bigShouldersText(
                                color: Color(0xFFA59FB0),
                                wordSpacing: 3,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 30,
                        ),
                        Container(
                          height: screenHeight / 18,
                          width: screenWidth * 0.55,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'search...',
                              labelStyle: GoogleFonts.bigShouldersText(
                                color: Color(0xFFD2CFD8),
                                fontSize: 20.0,
                              ),
                              contentPadding: EdgeInsets.only(left: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xFFD2CFD8),
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Color(0xFFD2CFD8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //changing screen
                  Positioned(
                    top: screenHeight * 0.35,
                    left: screenWidth - (screenWidth * 0.9),
                    child: Container(
                      height: screenHeight * 0.65,
                      width: screenWidth * 0.55,
                      child: allScreen[_selectedScreen],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  screenBuilder(String title, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isSelected[index]
            ? Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF23163D),
                ),
              )
            : Container(
                height: 8.0,
                width: 8.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
              ),
        SizedBox(height: 5.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedScreen = index;
              var previousIndex = isSelected.indexOf(true);
              isSelected[previousIndex] = false;
              isSelected[index] = true;
            });
          },
          child: Text(
            title,
            style: isSelected[index]
                ? GoogleFonts.bigShouldersText(
                    color: Color(0xFF23163D),
                    letterSpacing: 2,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w800,
                  )
                : GoogleFonts.bigShouldersText(
                    letterSpacing: 2,
                    color: Color(0xFFA59FB0),
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
          ),
        ),
      ],
    );
  }
}
