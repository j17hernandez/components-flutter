import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = {
    {
      'titulo': 'Uno',
      'subtitulo': 'Subtitulo Uno',
      'icono': 'Icons.account_circle'

    },
    {
      'titulo': 'Dos',
      'subtitulo': 'Subtitulo Dos',
      'icono': 'Icons.account_circle'

    },
    {
      'titulo': 'Tres',
      'subtitulo': 'Subtitulo Tres',
      'icono': 'Icons.account_circle'

    },
    {
      'titulo': 'Cuatro',
      'subtitulo': 'Subtitulo Cuatro',
      'icono': 'Icons.account_circle'

    },
    {
      'titulo': 'Cinco',
      'subtitulo': 'Subtitulo Cinco',
      'icono': 'Icons.account_circle'

    },
    
  };
  // ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems() {
  
  List<Widget> lista = new List<Widget>();
  
  for (Map opt in opciones) {
    final tempWidget = ListTile(
      title: Text(opt['title']),
    );

    lista..add(tempWidget)
         ..add( Divider() );
  }
    return lista;
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map( (item){
    return Column(
      children: [
        ListTile(
          title: Text( item['titulo'] + '!'),
          subtitle: Text(item['subtitulo']),
          leading: Icon(Icons.account_circle),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider()
      ],
    );
    }).toList();
  }
}