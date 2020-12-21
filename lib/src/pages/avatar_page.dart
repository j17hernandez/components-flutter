import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown[300],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://dam.smashmexico.com.mx/wp-content/uploads/2018/11/marvel-mcu-universo-cinematografico-marvel-linea-de-tiempo-cover2.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}