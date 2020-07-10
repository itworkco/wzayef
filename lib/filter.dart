import 'package:draggable_scrollbar_sliver/draggable_scrollbar_sliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wzayef/style.dart';

import 'SelectContryMobx.dart';

class filter extends StatefulWidget {
  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  SelectContryMobx selectCountry = SelectContryController();
  ScrollController scrollController = ScrollController();

  List data = [
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
    "تقنية معلومات",
    "إدارة أعمال",
    "سكرتارية",
    "تسويق و مبيعات",
    " إدارة أعمال",
  ];
  List<String> kind = [
    'الأحاديث القدسية',
    'آثار الصحابة',
    'كل الاحاديث',
    'الأحاديث المرفوعة',
  ];

  bool male = true;

  int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'تصفية',
          style: TextStyle(
            color: Color(0xff37352F),
            fontSize: 23,
            fontFamily: 'sukar-black',
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Color(0xff4EA1B5),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: <Widget>[
              //choose kind
              SizedBox(height: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'النوع',
                    style: TextStyle(
                        color: dgrayColor,
                        fontSize: 14,
                        fontFamily: 'Sukar-bold'),
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              padding: EdgeInsets.only(right: 14),
                              color: male ? grayColor : mainColor,
                              height: 34,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(male
                                      ? 'image/female_lightgray.png'
                                      : 'image/female.png'),
                                  SizedBox(width: 10),
                                  Text(
                                    'أنثى',
                                    style: TextStyle(
                                      color: male ? dgrayColor : Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Sukar-reg',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              male = false;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              padding: EdgeInsets.only(right: 14),
                              color: male ? mainColor : grayColor,
                              height: 34,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(male
                                      ? 'image/male.png'
                                      : 'image/male_lightgray.png'),
                                  SizedBox(width: 10),
                                  Text(
                                    'ذكر',
                                    style: TextStyle(
                                      color: male ? Colors.white : dgrayColor,
                                      fontSize: 14,
                                      fontFamily: 'Sukar-reg',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              male = true;
                            });
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              //first drobdown
              GestureDetector(
                onTap: () {
                  _showAdvancedDialo();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'القسم',
                      style: TextStyle(
                          color: Color(0xff191818),
                          fontSize: 14,
                          fontFamily: 'sukar-bold'),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 34,
                      child: Container(
                        padding: EdgeInsets.only(right: 11),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: textgrayColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.business_center,
                                  color: inputgrayColor,
                                  size: 15,
                                ),
                                SizedBox(width: 6.5),
                                Text(
                                  'أختر القسم',
                                  style: TextStyle(
                                      color: inputgrayColor,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold'),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: mainColor,
                              size: 26,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              // text feild
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 4),
                  Text(
                    'البلد',
                    style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 14,
                        fontFamily: 'sukar-bold'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 34,
                    child: Container(
                      padding: EdgeInsets.only(right: 6),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: textgrayColor, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset('image/pin_1_.png'),
                              Text(
                                'أختر البلد',
                                style: TextStyle(
                                    color: inputgrayColor,
                                    fontSize: 14,
                                    fontFamily: 'sukar-bold'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
              SizedBox(height: 10),
              //secound drobdown
              GestureDetector(
                onTap: () {
                  _showAdvancedDialo();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'نوع الوظيفة',
                      style: TextStyle(
                          color: Color(0xff191818),
                          fontSize: 14,
                          fontFamily: 'sukar-bold'),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 34,
                      child: Container(
                        padding: EdgeInsets.only(right: 11),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: textgrayColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: inputgrayColor,
                                  size: 15,
                                ),
                                SizedBox(width: 6.5),
                                Text(
                                  'أختر نوع الوظيفة',
                                  style: TextStyle(
                                      color: inputgrayColor,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold'),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: mainColor,
                              size: 26,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              //date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'التاريخ',
                    style: TextStyle(
                        color: dgrayColor,
                        fontSize: 14,
                        fontFamily: 'Sukar-bold'),
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(right: 14),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: textgrayColor, width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            height: 34,
                            child: Row(
                              children: <Widget>[
                                Image.asset('image/dcalender.png'),
                                SizedBox(width: 10),
                                Text(
                                  'من تاريخ',
                                  style: TextStyle(
                                    color: inputgrayColor,
                                    fontSize: 14,
                                    fontFamily: 'Sukar-bold',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(right: 14),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: textgrayColor, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            height: 34,
                            child: Row(
                              children: <Widget>[
                                Image.asset('image/dcalender.png'),
                                SizedBox(width: 10),
                                Text(
                                  'إلى تاريخ',
                                  style: TextStyle(
                                    color: inputgrayColor,
                                    fontSize: 14,
                                    fontFamily: 'Sukar-bold',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .45),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 34,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                        color: mainColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "تطبيق",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Sukar-reg',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 34,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor, width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "إعادة",
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 14,
                              fontFamily: 'Sukar-reg',
                            ),
                          )
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
    );
  }

  _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _showAdvancedDialo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(top: 40),
            child: AlertDialog(
              insetPadding: EdgeInsets.all(15),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              contentPadding: EdgeInsets.all(10),
              content: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.clear,
                          size: 25,
                          color: Color(0xff4EA1B5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .85,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(25)),
                        height: 40,
                        child: Observer(builder: (context) {
                          return TextField(
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
                                        color: Color(0xff116B7B),
                                        size: 25,
                                      ),
                                    ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 0),
                              hintText: "إبحث عن قسم",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: inputgrayColor,
                                  fontFamily: 'sukar-bold'),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1.5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1.5),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1.5),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: DraggableScrollbar(
                        alwaysVisibleScrollThumb: true,
                        controller: scrollController,
                        backgroundColor: Color(0xff116B7B),
                        child: ListView.builder(
                            controller: scrollController,
                            itemCount: data.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, loc) {
                              if (data[loc].contains(selectCountry.keyword))
                                return InkWell(
                                  onTap: () {
                                    selectCountry.onSelect(loc);
                                    selectCountry.text = data[loc];
                                    Navigator.pop(context, selectCountry.text);
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Observer(builder: (context) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                data[loc],
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: dgrayColor,
                                                  fontFamily: 'Sukar-bold',
                                                ),
                                              ),
                                              if (selectCountry.index == loc)
                                                Icon(
                                                  Icons.check,
                                                  size: 20,
                                                  color: Color(0xff116B7B),
                                                )
                                              else
                                                Container(),
                                            ],
                                          );
                                        }),
                                      ),
                                      Divider(
                                        height: 2,
                                        color: Color(0xffF3F3F3),
                                      )
                                    ],
                                  ),
                                );
                              else
                                return Container();
                            }),
                        heightScrollThumb: 48.0,
                        scrollThumbBuilder: (backgroundColor, thumbAnimation,
                            labelAnimation, height,
                            {labelConstraints, labelText}) {
                          return FadeTransition(
                            opacity: thumbAnimation,
                            alwaysIncludeSemantics: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: backgroundColor,
                              ),
                              height: height,
                              width: 4.0,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
