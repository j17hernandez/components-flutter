import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards pages'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // color: Colors.blue[50],
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue, size: 40.0,),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para tener idea'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],  
      ),
    );
  }

  Widget _cardTipo2() {
    final card =  Container(
       child: Column(
         children: [
           FadeInImage(
             image: NetworkImage('https://cdn.visualwilderness.com/wp-content/uploads/2019/12/Norway-Landscape-Photography-3.jpg'),
             placeholder: AssetImage('assets/jar-loading.gif.gif'),
             fadeInDuration: Duration( milliseconds: 200 ),
             height: 250.0,
             fit: BoxFit.cover,
          ),
          //  Image(
          //    image: NetworkImage('https://cdn.visualwilderness.com/wp-content/uploads/2019/12/Norway-Landscape-Photography-3.jpg'),
          //  ),
           Container(
             padding: EdgeInsets.all(10.0),
             child: Text('Paisaje descriptivo del aŕtico'),
           )
         ],
       ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}