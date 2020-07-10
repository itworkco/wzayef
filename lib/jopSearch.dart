import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wzayef/companyprofile.dart';
import 'package:wzayef/personprofille.dart';
import 'package:wzayef/style.dart';

import 'SelectContryMobx.dart';

class jopSearch extends StatefulWidget {
  @override
  _jopSearchState createState() => _jopSearchState();
}

class _jopSearchState extends State<jopSearch> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  SelectContryMobx selectCountry = SelectContryController();
  TextEditingController controller = TextEditingController();
  bool searching = false;
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: appBarColor,
                  boxShadow: [
                    BoxShadow(
                      color: Color(00000029).withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, -1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: appBarColor,
                          border: Border.all(color: mainColor, width: 1.5),
                          borderRadius: BorderRadius.circular(25)),
                      height: 40,
                      width: MediaQuery.of(context).size.width * .84,
                      child: TextField(
                        autofocus: true,
                        textAlign: TextAlign.start,
                        controller: selectCountry.search,
                        onChanged: (_) {
                          selectCountry.onChanged(_, context: context);
                          setState(() {});
                        },
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff191818)),
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
                            hintText: "إبحث عن وظيفة",
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (conntext, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return (number == index)
                              ? personprofile()
                              : companyprofile();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            child: Text(
                              'مهندس كهرباء',
                              style: TextStyle(
                                color: dgrayColor,
                                fontSize: 15,
                                fontFamily: 'sukar-bold',
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return (number == index)
                                    ? personprofile()
                                    : companyprofile();
                              }));
                            },
                          ),
                          Text(
                            (number == index)
                                ? 'أحمد محمد على'
                                : 'شركة رويس للسيارات',
                            style: TextStyle(
                              color: dgrayColor,
                              fontSize: 15,
                              fontFamily: 'sukar-bold',
                            ),
                          ),
                          Text(
                            'أبو ظبي- الإمارات العربية المتحدة',
                            style: TextStyle(
                              color: textgrayColor,
                              fontSize: 15,
                              fontFamily: 'sukar-bold',
                            ),
                          ),
                          Divider(
                            color: grayColor,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
