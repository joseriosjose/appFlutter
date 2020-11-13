import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class Atencion extends StatefulWidget {
  Atencion({Key key}) : super(key: key);

  @override
  _AtencionState createState() => _AtencionState();
}

class _AtencionState extends State<Atencion> {
  final personal = [
    {"nombre": "Dra. Maria", "avatar": "docente1.jpg"},
    {"nombre": "Dra. Adrian", "avatar": "docente2.jpg"},
    {"nombre": "Dra. Raul", "avatar": "docente1.jpg"},
    {"nombre": "Psicologo", "avatar": "docente2.jpg"}
  ];
  final datos = [
    {"avatar": "docente2.jpg", "dato": "A+", "item": "Tipo sangre"},
    {"avatar": "docente2.jpg", "dato": "177 cm", "item": "Estatura"},
    {"avatar": "docente2.jpg", "dato": "69 kg", "item": "Peso"},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 25) / 2;
    final double itemWidth = size.width / 0.8;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Atención medica y psicologica",
            style: TextStyle(color: PaletteColors.purplePrimary)),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 10),
            child: Text("Personal del instituto",
                style: TextStyle(
                    color: PaletteColors.purplePrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
          ),
          Container(
            height: 180,
            child: GridView.count(
              padding: const EdgeInsets.all(6.0),
              mainAxisSpacing: 10,
              childAspectRatio: (itemWidth / itemHeight),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              children: List.generate(
                  personal.length, (index) => _cardPersonal(personal[index])),
            ),
          ),
          _botonCita(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
            child: Text("Mi información clinica",
                style: TextStyle(
                    color: PaletteColors.purplePrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
          ),
          Container(
            height: 180,
            child: GridView.count(
              padding: const EdgeInsets.all(6.0),
              mainAxisSpacing: 10,
              childAspectRatio: (itemWidth / itemHeight),
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              children: List.generate(
                  datos.length, (index) => _tarjetita(datos[index])),
            ),
          ),
          _contactoEmergencia()
        ],
      ),
    );
  }
}

Widget _cardPersonal(Map<String, String> data) {
  return Container(
      height: 180,
      child: Column(
        children: <Widget>[_estado(), _avatar(data), _nombre(data)],
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

Widget _estado() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: PaletteColors.redCardMateria,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 6.0,
              right: 6.0,
            ),
            child: Text(
              " ",
            ),
          ),
        ),
      )
    ],
  );
}

Widget _avatar(Map<String, String> data) {
  final imagen = data['avatar'];
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/${imagen}'),
        )
      ],
    ),
  );
}

Widget _nombre(Map<String, String> data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(data["nombre"],
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF343339),
                fontStyle: FontStyle.italic,
                fontFamily: 'Roboto')),
      )
    ],
  );
}

Widget _botonCita() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 15, left: 55, right: 55),
    child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFFffdd83),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Container(
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/images/cita.png')),
                SizedBox(
                  width: 19,
                ),
                Text(
                  'Agendar cita',
                  style: TextStyle(
                      fontSize: 14, color: PaletteColors.purplePrimary),
                ),
              ],
            ),
          ),
        )),
  );
}

Widget _tarjetita(Map<String, String> data) {
  return Container(
      height: 150,
      width: 100,
      child: Column(
        children: <Widget>[
          _avatar(data),
          Text(data["item"]),
          Text(data["dato"])
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFF5F6F8)));
}

Widget _contactoEmergencia() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
        height: 150,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Contacto de emergencia.",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Roberto Villalobos Sánchez",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Parentesco: Tutor legal",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ]),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Numero:\n951-111-11-11",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
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
        )),
  );
}
