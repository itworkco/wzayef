import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wzayef/style.dart';

class personprofile extends StatefulWidget {
  @override
  _personprofileState createState() => _personprofileState();
}

class _personprofileState extends State<personprofile> {
  List<String> details = [
    'عدد سنين الخبرة',
    'أخر راتب',
    'المستوى التعليمى',
  ];
  List<String> data = [
    'سنتين - 5 سنوات',
    'غير محدد',
    'بكالريوس',
  ];

  void customLansher(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'image/emplaye.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 247,
                  ),
                  Container(
                    width: double.infinity,
                    height: 247,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/wf6u8n64.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 28, 12, 0),
                          // appBar
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                child: GestureDetector(
                                  onTap: () {
                                    share(context, 'share');
                                  },
                                  child: Image.asset(
                                    'image/tealShare.png',
                                  ),
                                ),
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .06),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  'image/back.png',
                                  fit: BoxFit.cover,
                                  width: 10,
                                  height: 20,
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                        ),
                        SizedBox(height: 6),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Image.asset(
                                'image/empAvatar.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 12),
                              Text(
                                'مهندس كهرباء',
                                style: TextStyle(
                                  color: mainColor,
                                  fontSize: 14,
                                  fontFamily: 'Sukar-bold',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'أحمد محمد علي',
                                style: TextStyle(
                                  color: profiledColor,
                                  fontSize: 12,
                                  fontFamily: 'Sukar-bold',
                                ),
                              ),
                              SizedBox(height: 2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'image/pinonline.png',
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'أبو ظبي - الإمارات العربية المتحدة',
                                    style: TextStyle(
                                      color: textgrayColor,
                                      fontSize: 12,
                                      fontFamily: 'Sukar-bold',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.business_center,
                                    size: 14,
                                    color: textgrayColor,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'هندسة',
                                    style: TextStyle(
                                      color: textgrayColor,
                                      fontSize: 12,
                                      fontFamily: 'Sukar-bold',
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'التفاصيل',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-bold',
                        color: profiledColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: details.length,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    details[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Sukar-bold',
                                      color: textgrayColor,
                                    ),
                                  ),
                                  Text(
                                    data[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Sukar-bold',
                                      color: textgrayColor,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        );
                      },
                    ),
                    //cv
                    Text(
                      'السيرة الذاتية',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-bold',
                        color: profiledColor,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: <Widget>[
                        Image.asset('image/word.png'),
                        SizedBox(width: 4),
                        Text(
                          'السيرة الذتية أحمد محمد علي.doc',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Sukar-bold',
                            color: profiledColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    //needed
                    Text(
                      'الهدف الوظيفي',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-bold',
                        color: profiledColor,
                      ),
                    ),
                    //content
                    SizedBox(height: 10),
                    Text(
                      'Undertake Electrical Repairs On Various Vehicles. The primary duty of an Auto Electrician is to use electronic diagnostic equipment to diagnose electrical issues within a vehicle. Most don’t think of Automotive workers as technologically savvy, but this is a key requirement for an Auto Electrician. They must be comfortable hooking up vehicles to the diagnostic machine and able to quickly interpret results. Once an Auto Electrician diagnoses an issue within a vehicle’s electrical systems, they develop and execute a repair plan for said issue. Given that today’s vehicles are increasingly electronic, this includes, but is not limited to: alarm systems, windows and locks, interior and exterior lighting and the internal CPU.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-reg',
                        color: profiledColor,
                      ),
                    ),
                    SizedBox(height: 14),
                    //contacts

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            customLansher(
                                'https://mail.google.com/mail/u/1/#inbox');
                          },
                          child: ClipRRect(
                            child: Container(
                              height: 34,
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'image/mail.png',
                                    width: 16,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "البريد الالكتروني",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Sukar-reg',
                                    ),
                                  )
                                ],
                              ),
                              color: mainColor,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            customLansher('tel:+01282402165');
                          },
                          child: ClipRRect(
                            child: Container(
                              height: 34,
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Image.asset(
                                      'image/phone_white.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "إتصال",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Sukar-reg',
                                    ),
                                  )
                                ],
                              ),
                              color: mainColor,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void share(BuildContext context, String s) {
    final RenderBox box = context.findRenderObject();
    final String text = 'share';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
