import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class InformacionAlumno extends StatefulWidget {
  InformacionAlumno({Key key}) : super(key: key);

  @override
  _InformacionAlumnoState createState() => _InformacionAlumnoState();
}

class _InformacionAlumnoState extends State<InformacionAlumno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Informacion Academica",
            style: TextStyle(color: PaletteColors.purplePrimary)),
      ),
      body: ListView(
        children: <Widget>[cardHead(), _containerOptions()],
      ),
    );
  }

  Widget cardHead() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/logito.jpeg'),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _labelTitle('TecNM Campus Oaxaca', 14),
                _labelTitle('Ing. Sistemas Computacionales', 14),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _labelTitle(String text, double size) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
      child: Text(text,
          style: TextStyle(
              color: PaletteColors.purplePrimary,
              fontSize: size,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto')),
    );
  }

  Widget _label(String text, double size) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto'),
    );
  }

  Widget _containerOptions() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _containerOption(
                "Reticula: 12323",
                "Mi Horario",
                "Ene-Jun/2020",
                "Semestre 4",
                "Creditos: 28\n\n",
                PaletteColors.blueButton,
                "image.png"),
            SizedBox(
              width: 20,
            ),
            _containerOption(
                "2015-2020",
                "Mis Calificaciones",
                "\nPromedio Acumulado: 7.1",
                "",
                "",
                PaletteColors.greenCardSugerencia,
                "tarea.png"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _containerOption(
                "Ene-Jun/2020",
                "Mi avance\nReticular",
                "Creditos Acumulados: 120",
                "",
                "",
                PaletteColors.blueCardMateria,
                "grafico.png"),
            SizedBox(
              width: 20,
            ),
            _containerOption(
                "",
                "Mis Activides\nComplementarias",
                "Creditos\nrestantes 6",
                "",
                "",
                PaletteColors.redCardMateria,
                "romp.png")
          ],
        )
      ],
    );
  }

  Widget _containerOption(String labelA, String labelB, String labelC,
      String labelD, String labelE, Color color, String img) {
    return Container(
        height: 205,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[_label(labelA, 12)],
              ),
              _label(labelB, 16),
              SizedBox(
                height: 3,
              ),
              _label(labelC, 14),
              SizedBox(
                height: 4,
              ),
              _label(labelD, 14),
              _label(labelE, 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[Image.asset("assets/images/${img}")],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color));
  }
}
