import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wzayef/jopsfilter.dart';
import 'package:wzayef/style.dart';

import 'SelectContryMobx.dart';

class sections extends StatefulWidget {
  @override
  _sectionsState createState() => _sectionsState();
}

class _sectionsState extends State<sections> {
  SelectContryMobx selectCountry = SelectContryController();
  TextEditingController controller = TextEditingController();
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              search
                  ? Container(
                      height: 64,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: appBarColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(00000029).withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: appBarColor,
                                border:
                                    Border.all(color: mainColor, width: 1.5),
                                borderRadius: BorderRadius.circular(25)),
                            height: 40,
                            width: MediaQuery.of(context).size.width * .80,
                            child: TextField(
                              autofocus: true,
                              textAlign: TextAlign.start,
                              controller: selectCountry.search,
                              onChanged: (_) {
                                selectCountry.onChanged(_, context: context);
                                setState(() {});
                              },
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff191818)),
                              decoration: InputDecoration(
                                  suffixIcon: !selectCountry.onChange
                                      ? Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          runAlignment: WrapAlignment.center,
                                          children: <Widget>[
                                            Image.asset('image/search.png')
                                          ],
                                        )
                                      : InkWell(
                                          onTap: () {
                                            selectCountry.clear();
                                            selectCountry.keyword = "";
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: Color(0xff4EA1B5),
                                            size: 25,
                                          ),
                                        ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  hintText: "إبحث عن قسم",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: textgrayColor,
                                    fontFamily: 'sukar-bold',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        color: Color(0xff4EA1B5), width: 1),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        color: Color(0xff4EA1B5), width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        color: Color(0xff4EA1B5), width: 1),
                                  )),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                search = false;
                              });
                            },
                            child: SizedBox(
                              child: Text(
                                'إلغاء',
                                style: TextStyle(
                                  color: mainColor,
                                  fontSize: 16,
                                  fontFamily: 'Sukar-bold',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 64,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: appBarColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(00000029).withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                search = true;
                              });
                            },
                            child: SizedBox(
                              child: Image.asset('image/search.png'),
                              height: 22,
                              width: 22,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .03),
                          Text(
                            'الأقسام',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 23,
                              fontFamily: 'Sukar-black',
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                              child: Image.asset('image/back.png'),
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.width + 70),
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return jopsFilter();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              child: ClipRRect(
                                child: Image(
                                  image: AssetImage('image/company.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(27),
                              ),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: dgrayColor,
                                  offset: Offset(0, 14),
                                  spreadRadius: -16,
                                  blurRadius: 10,
                                ),
                              ]),
                            ),
                          ),
                          Opacity(
                            opacity: .6,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(27),
                                  bottomLeft: Radius.circular(27),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(00000029).withOpacity(0.3),
                                    spreadRadius: -25,
                                    blurRadius: 6,
                                    offset: Offset(
                                        0, 28), // changes position of shadow
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              height: 53,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'تقنية معلومات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: dgrayColor,
                                  fontSize: 16,
                                  fontFamily: 'Sukar-bold',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
