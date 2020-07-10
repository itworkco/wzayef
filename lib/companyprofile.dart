import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wzayef/style.dart';

class companyprofile extends StatefulWidget {
  @override
  _companyprofileState createState() => _companyprofileState();
}

class _companyprofileState extends State<companyprofile> {
  List<String> details = [
    'الراتب',
    'المستوى المهني',
    'نوع الوظيفة',
    'عدد الموظفين',
    'حوافز',
    'مجال العمل',
    'المستوى التعلي',
    'سنوات الخبرة',
  ];
  List<String> data = [
    '3,900 - 3000',
    'مدير / سينيور',
    'دوام كامل',
    '11-50',
    'تأمين صحي',
    'السيارات',
    'بكالريوس',
    '10- 15 سنة',
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
                    'image/company.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
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
                                'image/companyAvatar.png',
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
                                'خدمة الرويس للسيارات',
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
                    //needed
                    Text(
                      'متطلبات العمل',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-bold',
                        color: profiledColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    //content
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
                    Text(
                      'التواصل الاجتماعي',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Sukar-bold',
                        color: profiledColor,
                      ),
                    ),
                    SizedBox(height: 9),
                    //contacts logo
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('image/twitterc.png'),
                            Text(
                              'تويتر',
                              style: TextStyle(
                                color: dmainColor,
                                fontSize: 12,
                                fontFamily: 'Sukar-bold',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('image/facebookc.png'),
                            Text(
                              'فيس بوك',
                              style: TextStyle(
                                color: dmainColor,
                                fontSize: 12,
                                fontFamily: 'Sukar-bold',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('image/youtubec.png'),
                            Text(
                              'يوتيوب',
                              style: TextStyle(
                                color: dmainColor,
                                fontSize: 12,
                                fontFamily: 'Sukar-bold',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                child: Image.asset('image/mail.png'),
                                color: dmainColor,
                                width: 40,
                                height: 40,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'البريد الالكتروني',
                              style: TextStyle(
                                color: dmainColor,
                                fontSize: 12,
                                fontFamily: 'Sukar-bold',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 46),
                    //button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          child: GestureDetector(
                            onTap: () {
                              customLansher('https://www.google.com/');
                            },
                            child: Container(
                              height: 34,
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('image/internet.png'),
                                  SizedBox(width: 6),
                                  Text(
                                    "زيارة الموقع",
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
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        SizedBox(width: 5),
                        ClipRRect(
                          child: GestureDetector(
                            onTap: () {
                              customLansher('tel:+01282402165');
                            },
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
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
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
