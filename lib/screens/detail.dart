import 'package:coffee_shop/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetails extends StatefulWidget {
  final imagePath, color, rating, users;
  CoffeeDetails({this.imagePath, this.color, this.rating, this.users});
  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: ColorPalette().leftBarColor,
          ),
          Container(
            height: screenHeight * 0.55,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
          ),
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage('assets/doodle.png'),
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
          ),
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: widget.color.withOpacity(0.9),
            ),
          ),
          Positioned(
            top: screenHeight / 20,
            left: screenWidth / 15,
            child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
          Positioned(
            top: screenHeight / 20,
            right: screenWidth / 15,
            child: Icon(
              Feather.shopping_bag,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: screenHeight / 14,
            left: screenWidth * 0.2,
            child: Hero(
              tag: widget.imagePath,
              child: Image(
                image: AssetImage(widget.imagePath),
                height: screenHeight * 0.35,
                width: screenWidth * 0.6,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.43,
            child: Container(
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth,
                  ),
                  Center(
                    child: Text(
                      'Grady\'s COLD BREW ',
                      style: GoogleFonts.bigShouldersText(
                        color: Color(0xFF23163D),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 100),
                  Container(
                    width: screenWidth,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Icon(Feather.user),
                              SizedBox(width: screenWidth / 50),
                              Text(
                                '${widget.users}',
                                style: TextStyle(
                                  color: widget.color,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: screenWidth / 25),
                              Container(
                                height: screenHeight / 30,
                                width: 1.5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth / 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Icon(Feather.star),
                              SizedBox(width: screenWidth / 50),
                              Text(
                                '${widget.rating}',
                                style: TextStyle(
                                  color: widget.color,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: screenWidth / 25),
                              Container(
                                height: screenHeight / 30,
                                width: 1.5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth / 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Icon(Feather.anchor),
                              SizedBox(width: screenWidth / 50),
                              Text(
                                'No. 1',
                                style: TextStyle(
                                  color: widget.color,
                                  fontWeight: FontWeight.w600,
                                  textBaseline: TextBaseline.alphabetic,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //screenWidth * 0.05
          Positioned(
            top: screenHeight * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                //about us
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.1),
                  child: Container(
                    height: screenHeight * 0.05,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'About Us',
                        style: GoogleFonts.bigShouldersText(
                          color: Color(0xFF23163D),
                          //fontSize: 30.0,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                //text flavor
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.1),
                  child: Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.8,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'Cold brewed with chicory and a unique blend of spices for\n20 hours , our concetrate is velvely-smooth and packed\nwith flavor.',
                        style: GoogleFonts.bigShouldersText(
                          color: Color(0xFFB5ABB8),
                          // fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 2,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.2,
                  width: screenWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.05),
                        child: buildItem(
                          '\$65.00',
                          widget.color,
                          'assets/coffee3.png',
                          screenWidth * 0.6,
                          screenHeight,
                        ),
                      ),
                      buildItem(
                        '\$120.00',
                        widget.color,
                        'assets/coffee4.png',
                        screenWidth * 0.6,
                        screenHeight,
                      ),
                      SizedBox(
                        width: screenWidth * 0.1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.030,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.1,
                  ),
                  child: Container(
                    height: screenHeight / 15,
                    width: screenWidth * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorPalette().buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        'BUY NOW',
                        style: GoogleFonts.bigShouldersText(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 20,
                ),
                Container(
                  height: screenHeight / 15,
                  width: screenHeight / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ColorPalette().buttonColor,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Feather.bookmark,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildItem(price, color, imagePath, screenWidth, screenHeight) {
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.25,
          width: screenWidth + 10,
        ),
        Positioned(
          bottom: screenHeight * 0.05,
          left: screenWidth * 0.1,
          child: Container(
            height: screenHeight / 10,
            width: screenWidth - 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10, // soften the shadow
                  spreadRadius: 1, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    10.0, // Move to bottom 5 Vertically
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          //nrml left +screenwidth - 3fsa
          left: screenWidth / 2 + 30,
          bottom: screenHeight * 0.075,
          child: Container(
            height: screenHeight * 0.12,
            width: screenHeight * 0.12,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          right: screenWidth / 8 - 20,
          top: screenHeight * 0.4,
          child: Container(
            height: screenHeight * 0.04,
            width: screenWidth * 0.04,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 2, //extend the shadow
                  offset: Offset(
                    -10.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 5 Vertically
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.2,
          bottom: screenHeight * 0.058,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                price,
                style: GoogleFonts.bigShouldersText(
                  color: color,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenHeight / 100,
              ),
              Text(
                'COLD BREW KIT',
                style: GoogleFonts.bigShouldersText(
                  color: Color(0xff23163d),
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
