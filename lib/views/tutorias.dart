import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class TutoriasAlumno extends StatefulWidget {
  TutoriasAlumno({Key key}) : super(key: key);

  @override
  _TutoriasAlumnoState createState() => _TutoriasAlumnoState();
}

class _TutoriasAlumnoState extends State<TutoriasAlumno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Tutorias disponibles para ti",
            style: TextStyle(color: PaletteColors.purplePrimary)),
      ),
      body: ListView(
        children: <Widget>[_containerOptions()],
      ),
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
            _containerOption("12323", "Estructura de datos", "", "1 Hr. diaria",
                "\n\n", PaletteColors.blueButton, "tuto07.png"),
            SizedBox(
              width: 20,
            ),
            _containerOption(
                "23454",
                "Matematicas discretas",
                "",
                "1 Hr. diaria",
                "\n\n",
                PaletteColors.greenCardSugerencia,
                "tuto07.png"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _containerOption(
                "98765",
                "Ecuaciones diferenciales",
                "",
                "1 Hr. diaria",
                "\n\n",
                PaletteColors.blueCardMateria,
                "tuto07.png"),
            SizedBox(
              width: 20,
            ),
            _containerOption(
                "75985",
                "Sistemas programables",
                "",
                "1 Hr. diaria",
                "\n\n",
                PaletteColors.redCardMateria,
                "tuto07.png"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        _containerFoot()
      ],
    );
  }

  Widget _containerFoot() {
    return Container(
        height: 100,
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _label("Unete al club\nde programación", 18),
              SizedBox(
                width: 35,
              ),
              Image.asset("assets/images/clublogo.png")
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: PaletteColors.yellowButton));
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
