import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    print(count);
    if (0 <= count && count <= 4) {
      msg = 'Отвратительно.Попробуй еще';
      img = Image.asset('assets/images/bad.png');
    } else {
      msg = 'Отлично! Хороший результат!';
      img = Image.asset('assets/images/good.png');
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: <Color>[
          Color(0xFF5337ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ]),
      ),
      child: Column(children: <Widget>[
        Container(
          width: 120,
          height: 120,
          child: FittedBox(
            fit: BoxFit.contain,
            child: img,
          ),
        ),

        Container(
          child: Text(
            msg,
            textAlign: TextAlign.center,
          ),
        ),

        Divider(
          color: Colors.white,
        ),
        Text('Верно отвечено на $count из $total'),
        Divider(
          color: Colors.white,
        ),

        FlatButton(onPressed: onClearState,
        child: Text(
          'Пройти еще раз',
          style: TextStyle(fontSize: 22))),

      ]),
    );
  }
}
