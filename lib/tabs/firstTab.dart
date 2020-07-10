import 'package:flutter/material.dart';

import '../companyprofile.dart';
import '../personprofille.dart';
import '../style.dart';

class firsttab extends StatefulWidget {
  @override
  _firsttabState createState() => _firsttabState();
}

class _firsttabState extends State<firsttab> {
  bool selectPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return _card(
                  'منذ ساعتان',
                  '4',
                  'image/companyAvatar.png',
                  'مهندس كهرباء',
                  'خدمة الرويس للسيارات',
                  'أبو ظبي - الإمارات العربية المتحدة',
                  'مؤهل عالى مناسب - التعامل مع جميع أنواع أجهزة الكمبيوتر والطابعات والماسحات الضوئية - التعامل مع كاميرات المراقبة والدعم - التعامل…',
                  'image/resorce.png',
                  'شبكة المرشد');
            }),
      ),
    );
  }

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
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 206,
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
      ),
    );
  }
}
