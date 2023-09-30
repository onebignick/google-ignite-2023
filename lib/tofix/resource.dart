import 'package:flutter/material.dart';

class Search1 extends StatelessWidget{
  const Search1({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      // component
      width:  double.infinity,
      height:  double.infinity,
      child:  Stack(
      children:  [
        Positioned(
          // auto group
          left:  27,
          top:  85,
          child:  
            Container(
              width:  375,
              height:  50,
              child:  
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // enliven logo top left
                      margin: const EdgeInsets.fromLTRB(0, 0, 162, 0),
                      width:  163,
                      height:  50,
                      child:  
                    ClipRRect(
                      borderRadius:  BorderRadius.circular(11),
                      child:  
                        Image.network(
                          'image.jpg', //add logo here
                          fit:  BoxFit.cover,
                          ),
                        ),
                      ),
                    Container(
                      // auto group
                      padding: const EdgeInsets.fromLTRB(8, 8, 7, 7),
                      height:  double.infinity,
                      decoration:  BoxDecoration (
                        color: const Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(16),
                          boxShadow:  const [
                            BoxShadow(
                              color:  Color(0x26000000),
                              offset:  Offset(0, 2),
                              blurRadius:  3,
                            ),
                            BoxShadow(
                              color:  Color(0x4c000000),
                              offset:  Offset(0, 1),
                              blurRadius:  1,
                            ),
                            ],
                            ),
                            child:  
                              Center(
                                // settings icon 24px top right
                                child:  
                                  SizedBox(
                                    width:  35,
                                    height:  35,
                                    child:  
                                      Image.network(
                                        'image.jpg', //icon of settings here
                                        fit:  BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // navigation bottom bar
                          left:  0,
                          top:  33,
                          child:  
                            Container(
                              padding: const EdgeInsets.fromLTRB(22.5, 12, 38.5, 16),
                              width:  412,
                              height:  80,
                              decoration: const BoxDecoration (
                                color: Color(0xfffffbff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    offset: Offset(0, -2),
                                    blurRadius:  3,
                                  ),
                                  BoxShadow(
                                    color:  Color(0x4c000000),
                                    offset:  Offset(0, 1),
                                    blurRadius:  1,
                                  ),
                                ],
                              ),
                              child:  
                                Row(
                                  crossAxisAlignment:  CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // segment15Bu (I26:3151;26:2810)
                                      margin: const EdgeInsets.fromLTRB(0, 0, 36.5, 0),
                                      height:  double.infinity,
                                      child:  
                                        Column(
                                          crossAxisAlignment:  CrossAxisAlignment.center,
                                          children:  [
                                            Container(
                                              // icon container for home
                                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                              width:  64,
                                              height:  32,
                                              child:  
                                                Image.network(
                                                  'image.jpg', //need to add home icon here
                                                  width:  64,
                                                  height:  32,
                                                ),
                                              ),
                                              Text(
                                                // label for home icon
                                                'Home',
                                                textAlign:  TextAlign.center,
                                                style:  SafeGoogleFont (
                                                  'Inter',
                                                  fontSize:  12,
                                                  fontWeight:  FontWeight.w600,
                                                  height:  1.3333333333,
                                                  letterSpacing:  0.5,
                                                  color: const Color(0xff5f23a2),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // resource 2nd bottom icon
                                          margin: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                                          height:  double.infinity,
                                          child:  
                                            Column(
                                              crossAxisAlignment:  CrossAxisAlignment.center,
                                              children:  [
                                                Container(
                                                  // icon container for resources
                                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                                                  width:  32,
                                                  height:  32,
                                                  child:  
                                                Image.network(
                                                  'image.jpg', // book icon image for resources
                                                  width:  32,
                                                  height:  32
                                                ),
                                              ),
                                              Text(
                                                // label for resource icon
                                                'Resources',
                                                textAlign:  TextAlign.center,
                                                style:  SafeGoogleFont (
                                                  'Inter',
                                                  fontSize:  12,
                                                  fontWeight:  FontWeight.w500,
                                                  height:  1.3333333333,
                                                  letterSpacing:  0.5,
                                                  color: const Color(0xff49454f),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // planner icon container segment
                                          margin: const EdgeInsets.fromLTRB(0, 0, 61.5, 0),
                                          height:  double.infinity,
                                          child:  
                                            Column(
                                              crossAxisAlignment:  CrossAxisAlignment.center,
                                              children:  [
                                                Container(
                                                  // icon container for planner
                                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                                                  width:  32,
                                                  height:  32,
                                                  child:  
                                                    Image.network(
                                                      'image.jpg',
                                                      width:  32,
                                                      height:  32,
                                                    ),
                                                ),
                                                Text(
                                                  // label for planner icon
                                                  'Planner',
                                                  textAlign:  TextAlign.center,
                                                  style:  SafeGoogleFont (
                                                    'Inter',
                                                    fontSize:  12,
                                                    fontWeight:  FontWeight.w500,
                                                    height:  1.3333333333,
                                                    letterSpacing:  0.5,
                                                    color: const Color(0xff49454f),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        Container(
                                          // container for help icon
                                          height:  double.infinity,
                                          child:  
                                            Column(
                                              crossAxisAlignment:  CrossAxisAlignment.center,
                                              children:  [
                                                Container(
                                                  // icon container for help icon
                                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                                                  width:  32,
                                                  height:  32,
                                                  child:  
                                                    Image.network(
                                                      'image.jpg',
                                                      width:  32,
                                                      height:  32,
                                                      ),
                                                ),
                                                Text(
                                                  // label for help icon
                                                  'Help',
                                                  textAlign:  TextAlign.center,
                                                  style:  SafeGoogleFont (
                                                    'Inter',
                                                    fontSize:  12,
                                                    fontWeight:  FontWeight.w500,
                                                    height:  1.3333333333,
                                                    letterSpacing:  0.5,
                                                    color: const Color(0xff49454f),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ],
                                        ),
                                      ),
                                    ),
// Positioned(
//   // autogroupehzwkrB (S6YDkqa1yZw6K589Piehzw)
//   left:  29*fem,
//   top:  185*fem,
//   child:  
// Container(
//   width:  353*fem,
//   height:  548*fem,
//   child:  
// Stack(
//   children:  [
// Positioned(
//   // rectangle257m (18:901)
//   left:  86*fem,
//   top:  33*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  267*fem,
//   height:  482*fem,
//   child:  
// Container(
//   decoration:  BoxDecoration (
//     borderRadius:  BorderRadius.circular(12*fem),
//     color:  Color(0xfff7f2fa),
//     boxShadow:  [
//       BoxShadow(
//         color:  Color(0x3f000000),
//         offset:  Offset(0*fem, 4*fem),
//         blurRadius:  2*fem,
//       ),
//     ],
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // rectangle59tK (18:902)
//   left:  0*fem,
//   top:  33*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  267*fem,
//   height:  482*fem,
//   child:  
// Container(
//   decoration:  BoxDecoration (
//     borderRadius:  BorderRadius.circular(12*fem),
//     color:  Color(0xfff7f2fa),
//     boxShadow:  [
//       BoxShadow(
//         color:  Color(0x3f000000),
//         offset:  Offset(0*fem, 4*fem),
//         blurRadius:  2*fem,
//       ),
//     ],
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // rectangle4rXq (18:903)
//   left:  24*fem,
//   top:  0*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  303*fem,
//   height:  548*fem,
//   child:  
// Container(
//   decoration:  BoxDecoration (
//     borderRadius:  BorderRadius.circular(12*fem),
//     color:  Color(0xfff7f2fa),
//     boxShadow:  [
//       BoxShadow(
//         color:  Color(0x3f000000),
//         offset:  Offset(0*fem, 4*fem),
//         blurRadius:  2*fem,
//       ),
//     ],
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // buttondarkXP5 (18:905)
//   left:  213*fem,
//   top:  19*fem,
//   child:  
// Container(
//   width:  97*fem,
//   height:  40*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xfff7f2fa),
//     borderRadius:  BorderRadius.circular(100*fem),
//     boxShadow:  [
//       BoxShadow(
//         color:  Color(0x3f000000),
//         offset:  Offset(0*fem, 4*fem),
//         blurRadius:  2*fem,
//       ),
//     ],
//   ),
//   child:  
// Container(
//   // statelayerEYP (I18:905;53923:27789)
//   width:  double.infinity,
//   height:  double.infinity,
//   decoration:  BoxDecoration (
//     color:  Color(0xfff7f2fa),
//   ),
//   child:  
// Stack(
//   children:  [
// Positioned(
//   // iconByR (I18:905;53923:27790)
//   left:  19*fem,
//   top:  14*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  12*fem,
//   height:  12*fem,
//   child:  
// Image.network(
//   [Image url]
//   width:  12*fem,
//   height:  12*fem,
// ),
// ),
// ),
// ),
// Positioned(
//   // labeltextJHM (I18:905;53923:27791)
//   left:  42*fem,
//   top:  10*fem,
//   child:  
// Center(
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  31*fem,
//   height:  20*fem,
//   child:  
// Text(
//   'Save',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.4285714286*ffem/fem,
//     letterSpacing:  0.1000000015*fem,
//     color:  Color(0xff686868),
//   ),
// ),
// ),
// ),
// ),
// ),
// Positioned(
//   // iconsbookmarkborder24pxyeP (18:906)
//   left:  13*fem,
//   top:  8*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  25*fem,
//   height:  25*fem,
//   child:  
// Image.network(
//   [Image url]
//   width:  25*fem,
//   height:  25*fem,
// ),
// ),
// ),
// ),
//   ],
// ),
// ),
// ),
// ),
// Positioned(
//   // supportingtextiVV (18:910)
//   left:  42*fem,
//   top:  322*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  262*fem,
//   height:  80*fem,
//   child:  
// Text(
//   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.4285714286*ffem/fem,
//     letterSpacing:  0.25*fem,
//     color:  Color(0xff49454f),
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // headlinezC7 (18:911)
//   left:  42*fem,
//   top:  270*fem,
//   child:  
// Container(
//   width:  57*fem,
//   height:  44*fem,
//   child:  
// Column(
//   crossAxisAlignment:  CrossAxisAlignment.start,
//   children:  [
// Text(
//   // titleuK5 (18:912)
//   'Title',
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  16*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.5*ffem/fem,
//     letterSpacing:  0.5*fem,
//     color:  Color(0xff1d1b20),
//   ),
// ),
// Text(
//   // subheadSpo (18:913)
//   'Subhead',
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.4285714286*ffem/fem,
//     letterSpacing:  0.25*fem,
//     color:  Color(0xff49454f),
//   ),
// ),
//   ],
// ),
// ),
// ),
// Positioned(
//   // headerzLX (18:914)
//   left:  93*fem,
//   top:  15*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  50*fem,
//   height:  24*fem,
//   child:  
// Text(
//   'Author',
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  16*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.5*ffem/fem,
//     letterSpacing:  0.150000006*fem,
//     color:  Color(0xff1d1b20),
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // monogramJ6K (18:915)
//   left:  42*fem,
//   top:  19*fem,
//   child:  
// Container(
//   width:  40*fem,
//   height:  40*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xff6750a4),
//     borderRadius:  BorderRadius.circular(20*fem),
//   ),
//   child:  
// Center(
//   child:  
// Center(
//   child:  
// Text(
//   'A',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  16*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.5*ffem/fem,
//     letterSpacing:  0.150000006*fem,
//     color:  Color(0xfffef7ff),
//   ),
// ),
// ),
// ),
// ),
// ),
// Positioned(
//   // subheadAeK (18:918)
//   left:  93*fem,
//   top:  39*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  45*fem,
//   height:  20*fem,
//   child:  
// Text(
//   'Source',
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w400,
//     height:  1.4285714286*ffem/fem,
//     letterSpacing:  0.25*fem,
//     color:  Color(0xff1d1b20),
//   ),
// ),
// ),
// ),
// ),
// Positioned(
//   // mediaRq9 (18:920)
//   left:  24*fem,
//   top:  74*fem,
//   child:  
// Align(
//   child:  
// SizedBox(
//   width:  303*fem,
//   height:  174*fem,
//   child:  
// Image.network(
//   [Image url]
//   fit:  BoxFit.cover,
// ),
// ),
// ),
// ),
// Positioned(
//   // buttondarkLx7 (18:921)
//   left:  197*fem,
//   top:  491*fem,
//   child:  
// TextButton(
//   onPressed:  () {},
//   style:  TextButton.styleFrom (
//     padding:  EdgeInsets.zero,
//   ),
//   child:  
// Container(
//   width:  117*fem,
//   height:  40*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xfff7f2fa),
//     borderRadius:  BorderRadius.circular(100*fem),
//     boxShadow:  [
//       BoxShadow(
//         color:  Color(0x3f000000),
//         offset:  Offset(0*fem, 4*fem),
//         blurRadius:  2*fem,
//       ),
//     ],
//   ),
//   child:  
// Center(
//   child:  
// Center(
//   child:  
// Text(
//   'Read More',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  14*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.4285714286*ffem/fem,
//     letterSpacing:  0.1000000015*fem,
//     color:  Color(0xff686868),
//   ),
// ),
// ),
// ),
// ),
// ),
// ),
// Positioned(
//   // inputchipdarkPQb (18:922)
//   left:  42*fem,
//   top:  420*fem,
//   child:  
// Container(
//   width:  75*fem,
//   height:  25*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xff6750a4),
//     borderRadius:  BorderRadius.circular(8*fem),
//   ),
//   child:  
// Container(
//   // statelayerX11 (I18:922;53923:28902)
//   width:  82*fem,
//   height:  32*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0x1ee8def8),
//   ),
//   child:  
// Center(
//   child:  
// Center(
//   child:  
// Text(
//   'Cholesterol',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  11*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.8181818182*ffem/fem,
//     letterSpacing:  0.1000000015*fem,
//     color:  Color(0xffe8def8),
//   ),
// ),
// ),
// ),
// ),
// ),
// ),
// Positioned(
//   // inputchipdarkcHM (18:923)
//   left:  187*fem,
//   top:  420*fem,
//   child:  
// Container(
//   width:  56*fem,
//   height:  25*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xff6750a4),
//     borderRadius:  BorderRadius.circular(8*fem),
//   ),
//   child:  
// Container(
//   // statelayerjcs (I18:923;53923:28902)
//   width:  58*fem,
//   height:  32*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0x1ee8def8),
//   ),
//   child:  
// Center(
//   child:  
// Center(
//   child:  
// Text(
//   'Others',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  11*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.8181818182*ffem/fem,
//     letterSpacing:  0.1000000015*fem,
//     color:  Color(0xffe8def8),
//   ),
// ),
// ),
// ),
// ),
// ),
// ),
// Positioned(
//   // inputchipdarkSXH (18:924)
//   left:  127*fem,
//   top:  420*fem,
//   child:  
// Container(
//   width:  50*fem,
//   height:  25*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0xff6750a4),
//     borderRadius:  BorderRadius.circular(8*fem),
//   ),
//   child:  
// Container(
//   // statelayermZZ (I18:924;53923:28902)
//   width:  58*fem,
//   height:  32*fem,
//   decoration:  BoxDecoration (
//     color:  Color(0x1ee8def8),
//   ),
//   child:  
// Center(
//   child:  
// Center(
//   child:  
// Text(
//   'Topics',
//   textAlign:  TextAlign.center,
//   style:  SafeGoogleFont (
//     'Roboto',
//     fontSize:  11*ffem,
//     fontWeight:  FontWeight.w500,
//     height:  1.8181818182*ffem/fem,
//     letterSpacing:  0.1000000015*fem,
//     color:  Color(0xffe8def8),
//   ),
// ),
// ),
// ),
// ),
// ),
// ),
//   ],
// ),
// ),
// ),
//   ],
// ),
// ),
// ),
// } 
// }
