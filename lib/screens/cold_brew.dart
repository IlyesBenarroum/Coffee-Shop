import 'package:coffee_shop/constants/color_palette.dart';
import 'package:coffee_shop/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ColdBrew extends StatefulWidget {
  @override
  _ColdBrewState createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        buildListItem(
          'assets/coffee4.png',
          '150',
          ColorPalette().firstSlice,
          sh,
          sw,
          sh / 5,
          sw / 3,
          3,
          200,
        ),
        buildListItem(
          'assets/coffee2.png',
          '160',
          ColorPalette().secondSlice,
          sh,
          sw,
          sh / 5,
          sw / 3,
          4,
          75,
        ),
        buildListItem(
          'assets/coffee3.png',
          '220',
          ColorPalette().thirdSlice,
          sh,
          sw,
          sh / 5,
          sw / 3,
          3.5,
          65,
        ),
        SizedBox(
          height: sh * 0.1,
        ),
      ],
    );
  }

  buildListItem(String imagePath, String price, Color secondSlice, double sh,
      double sw, double ih, double iw, double _rating, int users) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CoffeeDetails(
              imagePath: imagePath,
              color: secondSlice,
              rating: _rating,
              users: users,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          //pic and cart container
          Container(
            height: (sh / 3),
            width: sw * 0.55,
          ),
          //cart
          Positioned(
            bottom: 0,
            left: 0,
            child: Stack(
              children: [
                //cart transparent
                Container(
                  height: sh / 3 * 0.7,
                  width: sw * 0.55,
                  color: Colors.transparent,
                ),
                //cart
                Positioned(
                  //doodle
                  child: Container(
                    height: sh / 3 * 0.7,
                    width: sw * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/doodle.png',
                        ),
                        fit: BoxFit.none,
                      ),
                    ),
                    //opacity
                    child: Container(
                      height: sh,
                      width: sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.6),
                      ),
                      //cart color
                      child: Container(
                        height: sh,
                        width: sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: secondSlice.withOpacity(0.9),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(sw * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //price text and value
                              Container(
                                width: (sw * 0.55) * 0.9,
                                height: ((sh / 3 * 0.7) / 2) -
                                    (2 * (sw * 0.05)) * 0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: (((sh / 3 * 0.7) / 2) -
                                              (2 * (sw * 0.05)) * 0.45) *
                                          0.35,
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Text(
                                          'Price',
                                          style: GoogleFonts.bigShouldersText(
                                            color: Color(0xFF231630),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: (((sh / 3 * 0.7) / 2) -
                                              (2 * (sw * 0.05)) * 0.45) *
                                          0.65,
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Text(
                                          '\$$price',
                                          style: GoogleFonts.bigShouldersText(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //rest
                              Container(
                                height: ((sh / 3 * 0.7) / 2) -
                                    (2 * (sw * 0.05)) * 0.65,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //Grady\'s COLD BREW'
                                    Container(
                                      //alignment: Alignment.center,
                                      width: (sw * 0.55) * 0.75,
                                      height: ((((sh / 3 * 0.7) / 2) -
                                                  (2 * (sw * 0.05)) * 0.65) *
                                              0.55) *
                                          0.6,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          'Grady\'s COLD BREW',
                                          style: GoogleFonts.bigShouldersText(
                                            color: Color(0xFF23163D),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                          ),
                                          //    textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: (((sh / 3 * 0.7) / 2) -
                                              (2 * (sw * 0.05)) * 0.65) *
                                          0.625,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          //review and stars
                                          Container(
                                            width:
                                                ((sw * 0.55) - sh * 0.05) / 2,
                                            height: ((((sh / 3 * 0.7) / 2) -
                                                    (2 * (sw * 0.05)) * 0.65) *
                                                0.55),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: ((((sh / 3 * 0.7) /
                                                                  2) -
                                                              (2 * (sw * 0.05)) *
                                                                  0.65) *
                                                          0.55) *
                                                      0.39,
                                                  child: FittedBox(
                                                    fit: BoxFit.fitHeight,
                                                    child: Text(
                                                      '$users review',
                                                      style: GoogleFonts
                                                          .bigShouldersText(
                                                        color: Colors.white,
                                                        // fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SmoothStarRating(
                                                  onRated: (rating) => setState(() {
                                                    _rating = rating;
                                                  }),
                                                  starCount: 5,
                                                  size: 15,
                                                  color: Colors.white,
                                                  rating: _rating,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: (((sw * 0.55) - sh * 0.05) /
                                                    2) *
                                                0.9,
                                            height: ((((sh / 3 * 0.7) / 2) -
                                                        (2 * (sw * 0.05)) *
                                                            0.65) *
                                                    0.55) *
                                                0.75,

                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            //add icon and text
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                //add icon
                                                FittedBox(
                                                  fit: BoxFit.fitWidth,
                                                  child: Icon(
                                                    Icons.add,
                                                    //size: 20.0,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                //add text
                                                FittedBox(
                                                  fit: BoxFit.fitWidth,
                                                  child: Text(
                                                    'Add',
                                                    style: GoogleFonts
                                                        .bigShouldersText(
                                                      color: Color(0xFF23163D),
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //pic
          Positioned(
            right: 0,
            bottom: (sh / 3 * 0.7) / 2,
            child: Stack(
              children: [
                Container(
                  height: ih,
                  width: iw,
                  color: Colors.transparent,
                ),
                //image
                Positioned(
                  top: 0,
                  right: 0,
                  child: Hero(
                    child: Container(
                      height: ih,
                      width: iw,
                      child: Image(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    tag: imagePath,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
