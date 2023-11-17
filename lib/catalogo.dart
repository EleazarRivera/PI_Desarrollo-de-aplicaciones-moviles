import 'package:flutter/material.dart';


class Caja extends StatefulWidget {

  Color color;
  int numero;
  double ancho;

  Caja( this.color, this.numero, this.ancho );

  @override
  State<Caja> createState() => _CajaState();
}

class _CajaState extends State<Caja> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.ancho,
        height: widget.ancho,

        color: widget.color,

        child: Center(
          child: Text( widget.numero.toString() ),
        ),
    );
  }
}
class Filas extends StatefulWidget {

  @override
  State<Filas> createState() => _FilasState();
}

class _FilasState extends State<Filas> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fes.vecteezy.com%2Farte-vectorial%2F6429746-fondo-abstracto-gradiente-abstracto-fondo-moderno-para-aplicaciones-moviles&psig=AOvVaw0fcGCogzMgHo77VnusNYay&ust=1699201780328000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjziIbiqoIDFQAAAAAdAAAAABAE")),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bienvenido al catalogo de peliculas"),
          ),
          body: Container(
            height: double.infinity,
            color: Colors.black,
      
            child: Row(
      
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
      
              children: <Widget>[
                Caja( const Color.fromARGB(255, 7, 90, 255), 1, 100.0 ),
      
                Align(
                  alignment: Alignment.center,
                  child: Caja( const Color.fromARGB(255, 91, 18, 219), 2, 100.0 ),
                ),
      
                Caja( Colors.amber, 3, 100.0 ),
              ],
            ),
      
          ),
        ),
      ),
    );
  }
}