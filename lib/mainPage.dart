import 'package:flutter/material.dart';
import 'package:mafia/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String mafiaNumber = '';
String citizenNumber = '';
String doctors = '';
String cherif = '';

List players = [];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          '@2handaulet',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      floatingActionButton: players.length != 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
                players.shuffle();
              },
              child: Icon(Icons.arrow_forward),
            )
          : null,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Мафия: ',
                                style: _style(),
                              ),
                              Text(
                                '$mafiaNumber',
                                style: _style(),
                              ),
                            ],
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              iconSize: 48,
                              iconEnabledColor: Colors.black,
                              style: TextStyle(color: Colors.white),
                              autofocus: true,
                              items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                  .map((value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  mafiaNumber = value.toString();
                                  for (int i = 0; i < value; i++) {
                                    players.add('Мафия');
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Жители: ',
                                style: _style(),
                              ),
                              Text(
                                '$citizenNumber',
                                style: _style(),
                              ),
                            ],
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              style: TextStyle(color: Colors.white),
                              iconSize: 48,
                              iconEnabledColor: Colors.black,
                              autofocus: true,
                              items: <int>[
                                0,
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15
                              ].map((value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  citizenNumber = value.toString();
                                  for (int i = 0; i < value; i++) {
                                    players.add('Житель');
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Доктор: ',
                                style: _style(),
                              ),
                              Text(
                                '$doctors',
                                style: _style(),
                              ),
                            ],
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              style: TextStyle(color: Colors.white),
                              iconSize: 48,
                              iconEnabledColor: Colors.black,
                              autofocus: true,
                              items: <int>[
                                0,
                                1,
                                2,
                                3,
                                4,
                                5,
                              ].map((value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  doctors = value.toString();
                                  for (int i = 0; i < value; i++) {
                                    players.add('Доктор');
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Шериф: ',
                                style: _style(),
                              ),
                              Text(
                                '$cherif',
                                style: _style(),
                              ),
                            ],
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton<int>(
                              style: TextStyle(color: Colors.white),
                              iconSize: 48,
                              iconEnabledColor: Colors.black,
                              autofocus: true,
                              items: <int>[
                                0,
                                1,
                                2,
                                3,
                                4,
                                5,
                              ].map((value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  cherif = value.toString();
                                  for (int i = 0; i < value; i++) {
                                    players.add('Шериф');
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      players.clear();
                      mafiaNumber = '';
                      citizenNumber = '';
                      doctors = '';
                      cherif = '';
                    });
                  },
                  padding: EdgeInsets.all(16),
                  color: Colors.greenAccent,
                  child: Text(
                    'ОБНУЛИТЬ',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _style() {
    return TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
  }
}
