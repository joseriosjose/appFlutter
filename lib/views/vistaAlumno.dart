import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class VistaAlumno extends StatefulWidget {
  @override
  _VistaAlumnoState createState() => _VistaAlumnoState();
}

class _VistaAlumnoState extends State<VistaAlumno> {
  final materias = [
    {
      "materia": "Estructura de Datos",
      "clave": "233-D",
      "tipoCurso": "Especial"
    },
    {
      "materia": "Taller de Sistemas\nOperativos",
      "clave": "222-D",
      "tipoCurso": "Recurso"
    },
    {
      "materia": "Ecuaciones\nDiferenciales",
      "clave": "980-D",
      "tipoCurso": "Ordinario"
    },
    {
      "materia": "Metodos Numericos",
      "clave": "777-D",
      "tipoCurso": "Ordinario"
    },
    {
      "materia": "Fundamentos de\nTelecomunicaciones",
      "clave": "237-D",
      "tipoCurso": "Ordinario"
    }
  ];
  final recomentaciones = [
    {
      "nombre": "Club de programación",
      "descripcion": "Un docente te\nbrindara atención personalizada",
      "imagen": "tuto.png",
      "vista": "tutorias"
    },
    {
      "nombre": "Becas",
      "descripcion": "Aprovecha las becas\nque son compatibles contigo",
      "imagen": "beca.png",
      "vista": "becas"
    },
    {
      "nombre": "Atencion Medica y psicologica",
      "descripcion": "",
      "imagen": "psicologa.png",
      "vista": "atencion"
    }
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 25) / 2;
    final double itemWidth = size.width / 2.8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Jose Rios",
            style: TextStyle(color: PaletteColors.purplePrimary)),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/avatar.jpg'),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _labelTitle('Ing. Sistemas Computacionales', 14),
                      _labelTitle('15161315', 14),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: PaletteColors.yellowButton,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, right: 50.0, top: 8, bottom: 8),
                          child: Text("Activo con recurso",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: PaletteColors.purplePrimary)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 240,
                  height: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "75%",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: PaletteColors.purplePrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                  )),
              Container(
                  width: 100,
                  height: 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      border: Border.all(color: PaletteColors.purplePrimary)))
            ],
          ),
          _labelTitle("Carga Academica", 19),
          Container(
            height: 200,
            child: GridView.count(
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: (itemWidth / itemHeight),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              children: List.generate(
                  materias.length, (index) => _cardMateria(materias[index])),
            ),
          ),
          _labelTitle("Recomendaciones", 19),
          _listRecomendation(size.width / 1.8, itemHeight)
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _cardMateria(Map<String, String> data) {
    return Card(
      color: data['tipoCurso'] == 'Ordinario'
          ? PaletteColors.blueCardMateria
          : (data['tipoCurso'] == 'Recurso'
              ? PaletteColors.yellowCardSugerencia
              : PaletteColors.redCardMateria),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _label(data['materia'], 12),
                _label(data['tipoCurso'], 12)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _label(data['clave'], 10),
                Image.asset("assets/images/materia.png")
              ],
            ),
          ),
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

  Widget _listRecomendation(double itemWidth, double itemHeight) {
    return Container(
      height: 210,
      child: GridView.count(
        padding: const EdgeInsets.all(6.0),
        mainAxisSpacing: 10,
        childAspectRatio: (itemWidth / itemHeight),
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        children: List.generate(recomentaciones.length,
            (index) => _cardRecomendaciones(index, recomentaciones[index])),
      ),
    );
  }

  Widget _cardRecomendaciones(int number, Map<String, String> recomendacion) {
    final imagen = recomendacion['imagen'];
    final donde = recomendacion['vista'];
    return Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _label(recomendacion['nombre'], 24),
              SizedBox(
                height: 5,
              ),
              _label(recomendacion['descripcion'], 14),
              SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _button(donde),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset("assets/images/${imagen}"),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: number % 2 == 0
                ? PaletteColors.yellowCardSugerencia
                : PaletteColors.greenCardSugerencia));
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

  Widget _button(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 11),
      child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/${text}');
          },
          textColor: Colors.white,
          color: PaletteColors.blueButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Container(
              width: 90,
              child: Row(
                children: <Widget>[
                  Icon(Icons.visibility),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Ver mas',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
