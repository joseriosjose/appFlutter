import 'package:alertatemprana/views/Linechart.dart';
import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class Indicadores extends StatefulWidget {
  @override
  _IndicadoresState createState() => _IndicadoresState();
}

class _IndicadoresState extends State<Indicadores> {
  final materias = [
    {
      "materia": "Estructura de Datos",
      "horas": "12:00-13:00 hrs",
      "docente": "Mc. Dalia",
      "tipoCurso": "Especial",
      "avatar": "docente1.jpg"
    },
    {
      "materia": "Programación \n lógica  y funcional",
      "horas": "12:00-13:00 hrs",
      "docente": "Mc. Idahr",
      "tipoCurso": "Especial",
      "avatar": "docente2.jpg"
    },
    {
      "materia": "Contabilidad II",
      "horas": "12:00-13:00 hrs",
      "docente": "Lic. Juan",
      "tipoCurso": "Recurso",
      "avatar": "docente1.jpg"
    },
    {
      "materia": "Metodos Numericos",
      "horas": "12:00-13:00 hrs",
      "docente": "Mc. Alberto",
      "tipoCurso": "Recurso",
      "avatar": "docente2.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 25) / 2;
    final double itemWidth = size.width / 1.6;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Mis indicadores",
            style: TextStyle(color: PaletteColors.purplePrimary)),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 28.0, bottom: 18),
            child: Text("Require tu atención",
                style: TextStyle(
                    color: PaletteColors.purplePrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
          ),
          Container(
            height: 200,
            child: GridView.count(
              padding: const EdgeInsets.all(6.0),
              mainAxisSpacing: 10,
              childAspectRatio: (itemWidth / itemHeight),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              children: List.generate(
                  materias.length, (index) => _cardMateria(materias[index])),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 28.0, bottom: 18),
            child: Text("Rendimiento academico",
                style: TextStyle(
                    color: PaletteColors.purplePrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Linechart(),
          )
        ],
      ),
    );
  }
}

Widget _cardMateria(Map<String, String> data) {
  return Container(
      height: 200,
      child: Row(
        children: <Widget>[
          _tipocurso(data["tipoCurso"]),
          _informacionCurso(data),
          _avatar(data)
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ));
}

Widget _tipocurso(String text) {
  return Column(
    children: <Widget>[
      Container(
        height: 188,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
            color: text == 'Ordinario'
                ? PaletteColors.blueCardMateria
                : (text == 'Recurso'
                    ? PaletteColors.yellowCardSugerencia
                    : Color(0xFFf21717))),
        child: RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _informacionCurso(Map<String, String> data) {
  return Padding(
    padding: const EdgeInsets.only(top: 25.0, left: 14.0, right: 14.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(data["materia"],
            style: TextStyle(
                color: Color(0xFF57419D),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto')),
        Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Text("Lun - Vie",
              style: TextStyle(
                  color: Color(0xFF47464A),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
        ),
        Text(data["horas"]),
        Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Text("Docente:",
              style: TextStyle(
                  color: Color(0xFF47464A),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
        ),
        Text(data["docente"])
      ],
    ),
  );
}

Widget _avatar(Map<String, String> data) {
  final imagen = data['avatar'];
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/${imagen}'),
        )
      ],
    ),
  );
}
