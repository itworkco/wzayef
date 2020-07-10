import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wzayef/addemployee.dart';
import 'package:wzayef/addjop.dart';
import 'package:wzayef/emloyeefilter.dart';
import 'package:wzayef/filter.dart';
import 'package:wzayef/jopSearch.dart';
import 'package:wzayef/jopsfilter.dart';
import 'package:wzayef/personprofille.dart';
import 'package:wzayef/sections.dart';
import 'package:wzayef/style.dart';

import 'companyprofile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> title = [
    'تقنية معلومات',
    'أدارة أعمال',
    'سكرتارية',
    'تسويق\ مبيعات',
    'تقنية معلومات',
    'أدارة أعمال',
    'سكرتارية',
    'تسويق\ مبيعات'
  ];
  bool selectPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SafeArea(
        child: SingleChildScrollView(
          // emolyer search for jop tab
          child: selectPage
              ? Column(
                  children: <Widget>[
                    //appBar
                    _appBar(),
                    //switch button
                    _button(),
                    SizedBox(height: 10),
                    //title Row
                    titleSection(),
                    //Silder
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Container(
                          height: 85,
                          decoration: BoxDecoration(
                            color: grayColor,
                            boxShadow: [
                              BoxShadow(
                                color: Color(00000029).withOpacity(0.15),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        _Slider(),
                      ],
                    ),
                    SizedBox(height: 21),
                    //chance section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'الباحثون عن عمل',
                            style: TextStyle(
                              color: dgrayColor,
                              fontSize: 16,
                              fontFamily: 'Sukar-bold',
                            ),
                          ),
                        ),

                        //Card
                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/card1.png',
                            'مهندس كهرباء',
                            'أحمد محمد علي',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'بيت . كوم'),

                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/card2.png',
                            'مهندس كهرباء',
                            'أحمد محمد علي',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'بيت . كوم'),

                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/card3.png',
                            'مهندس كهرباء',
                            'أحمد محمد علي',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'بيت . كوم'),

                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/card4.png',
                            'مهندس كهرباء',
                            'أحمد محمد علي',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'بيت . كوم'),
                      ],
                    ),
                  ],
                  // jop chance tab
                )
              : Column(
                  children: <Widget>[
                    //appBar
                    _appBar(),
                    //switch button
                    _button(),
                    SizedBox(height: 10),
                    //title Row
                    titleSection(),
                    //Silder
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Container(
                          height: 85,
                          decoration: BoxDecoration(
                            color: grayColor,
                            boxShadow: [
                              BoxShadow(
                                color: Color(00000029).withOpacity(0.15),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        _Slider(),
                      ],
                    ),
                    SizedBox(height: 21),
                    //chance section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            'أحدث فرص العمل',
                            style: TextStyle(
                              color: dgrayColor,
                              fontSize: 16,
                              fontFamily: 'Sukar-bold',
                            ),
                          ),
                        ),

                        //Card
                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/companyAvatar.png',
                            'مهندس كهرباء',
                            'خدمة الرويس للسيارات',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'شبكة المرشد'),
                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/companyAvatar.png',
                            'مهندس كهرباء',
                            'خدمة الرويس للسيارات',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'شبكة المرشد'),
                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/companyAvatar.png',
                            'مهندس كهرباء',
                            'خدمة الرويس للسيارات',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'شبكة المرشد'),
                        _card(
                            'منذ ساعتان',
                            '4',
                            'image/companyAvatar.png',
                            'مهندس كهرباء',
                            'خدمة الرويس للسيارات',
                            'أبو ظبي - الإمارات العربية المتحدة',
                            'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                            'image/resorce.png',
                            'شبكة المرشد'),
                      ],
                    ),
                  ],
                ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: mainColor,
              onPressed: () {
                _dialog();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  // sperated app bar widget
  Widget _appBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 64,
      color: appBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return jopSearch();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Image.asset('image/search.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return filter();
                  }));
                },
                child: Image.asset('image/filter.png'),
              ),
            ],
          ),
          Text(
            'الوظائف',
            style: TextStyle(
              color: mainColor,
              fontSize: 23,
              fontFamily: 'sukar-black',
            ),
          ),
          Image.asset('image/back.png'),
        ],
      ),
    );
  }

  Widget _dialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(15),
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.subtitles,
                                size: 55,
                                color: mainColor,
                              ),
                              SizedBox(height: 12),
                              Text(
                                'فرصة عمل',
                                style: TextStyle(
                                  color: profiledColor,
                                  fontSize: 14,
                                  fontFamily: 'Sukar-bold',
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return addjop();
                            }));
                          },
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * .2),
                        GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.business_center,
                                size: 55,
                                color: mainColor,
                              ),
                              SizedBox(height: 12),
                              Text(
                                'طلب عمل',
                                style: TextStyle(
                                  color: profiledColor,
                                  fontSize: 14,
                                  fontFamily: 'Sukar-bold',
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return addemployee();
                            }));
                          },
                        ),
                      ],
                    )),
                Positioned(
                  top: 5,
                  left: 5,
                  child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Color(0xff4EA1B5),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                )
              ],
            ),
          );
        });
  }

// seperat card widget
  Widget _card(
      String since,
      String veiwer,
      String avatar,
      String title,
      String company,
      String place,
      String description,
      String scourceImage,
      String scource) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return selectPage ? personprofile() : companyprofile();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 206,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            boxShadow: [
              BoxShadow(
                color: Color(00000029).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        since,
                        style: TextStyle(
                          color: textgrayColor,
                          fontSize: 16,
                          fontFamily: 'Sukar-bold',
                        ),
                      ),
                      SizedBox(width: 12),
                      Row(
                        children: <Widget>[
                          Image.asset('image/eye.png'),
                          SizedBox(width: 4),
                          Text(
                            veiwer,
                            style: TextStyle(
                              color: textgrayColor,
                              fontSize: 10,
                              fontFamily: 'Sukar-bold',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset('image/back.png'),
                  ),
                ],
              ),
              // details Row
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 57,
                    width: 57,
                    child: Image.asset(avatar),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 14,
                          fontFamily: 'Sukar-bold',
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        company,
                        style: TextStyle(
                          color: dgrayColor,
                          fontSize: 12,
                          fontFamily: 'Sukar-bold',
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: <Widget>[
                          Image.asset('image/pinonline.png'),
                          SizedBox(width: 6),
                          Text(
                            place,
                            style: TextStyle(
                              color: textgrayColor,
                              fontSize: 12,
                              fontFamily: 'Sukar-bold',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                description,
                maxLines: 2,
                style: TextStyle(
                  color: dgrayColor,
                  fontSize: 14,
                  fontFamily: 'Sukar-bold',
                ),
              ),
              Text(
                'المصدر',
                style: TextStyle(
                  color: textgrayColor,
                  fontSize: 12,
                  fontFamily: 'Sukar-bold',
                ),
              ),
              Row(
                children: <Widget>[
                  Image.asset(scourceImage),
                  SizedBox(width: 6),
                  Text(
                    scource,
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontFamily: 'Sukar-bold',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _Slider() {
    return Container(
      padding: EdgeInsets.only(right: 6),
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: title.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            child: Column(
              children: <Widget>[
                Image.asset('image/section${index + 1}.png'),
                Text(
                  title[index],
                  style: TextStyle(
                    color: dgrayColor,
                    fontSize: 15,
                    fontFamily: 'Sukar-bold',
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return selectPage ? emloyeeFilter() : jopsFilter();
              }));
            },
          );
        },
      ),
    );
  }

  Widget titleSection() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'الأقسام',
            style: TextStyle(
              color: dgrayColor,
              fontSize: 16,
              fontFamily: 'Sukar-bold',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return sections();
              }));
            },
            child: Row(
              children: <Widget>[
                Text(
                  'المزيد',
                  style: TextStyle(
                    color: textgrayColor,
                    fontSize: 14,
                    fontFamily: 'Sukar-bold',
                  ),
                ),
                SizedBox(width: 8),
                Image.asset('image/blackArow.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _button() {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 50,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectPage = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectPage ? grayColor : mainColor,
                  boxShadow: [
                    selectPage
                        ? BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: -10,
                            blurRadius: 20,
                            offset: Offset(0, 8), // changes position of shadow
                          )
                        : BoxShadow(
                            color: dgrayColor.withOpacity(0.5),
                            spreadRadius: -10,
                            blurRadius: 20,
                            offset: Offset(0, 8), // changes position of shadow
                          )
                  ],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'فرص عمل',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Sukar-bold',
                      color: selectPage ? textgrayColor : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectPage = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectPage ? mainColor : grayColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    selectPage
                        ? BoxShadow(
                            color: dgrayColor.withOpacity(0.5),
                            spreadRadius: -10,
                            blurRadius: 20,
                            offset: Offset(0, 8), // changes position of shadow
                          )
                        : BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: -10,
                            blurRadius: 20,
                            offset: Offset(0, 8), // changes position of shadow
                          ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'باحثون عن عمل',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Sukar-bold',
                      color: selectPage ? Colors.white : textgrayColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
