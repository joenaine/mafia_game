import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'mafia_view.dart';
import 'mainPage.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.1,
              child: FlipCard(
                  front: MafiaView(
                    text: '${_currentIndex + 1}',
                  ),
                  back: MafiaView(
                    text: players[_currentIndex],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                    onPressed: showPreviousCard,
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Предыдущий',
                      style: TextStyle(color: Colors.white),
                    )),
                OutlinedButton.icon(
                    onPressed: showNextCard,
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    label: Text('Следующий',
                        style: TextStyle(color: Colors.white))),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          (_currentIndex + 1 < players.length) ? _currentIndex + 1 : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : players.length - 1;
    });
  }
}
