import 'package:flutter/material.dart';
import '../libraries/PaletteColors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEAE7EF),
        child: ListView(children: <Widget>[
          Stack(
              children: <Widget>[formularioLoginWidget(), imagenLoginWidget()])
        ]),
      ),
    );
  }

  //funciones dentro del state

  Widget imagenLoginWidget() {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/Logo3.png'))),
    );
  }

  Widget formularioLoginWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 260.0),
      child: Container(
        color: Color(0xFFEAE7EF),
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            color: Colors.white,
          ),
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  tituloLoginWidget(),
                  txtLoginWidget(),
                  inputUsuario(),
                  inputContrenia(),
                  botonIniciarSesion(),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text("¿Olvidaste tu contraseña?",
                        style:
                            TextStyle(color: Color(0xFF707070), fontSize: 14)),
                  ),
                  SizedBox(height: 80)
                ],
              )),
        ),
      ),
    );
  }

  Widget tituloLoginWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Image.asset('assets/images/logo2.png'),
        ),
      ],
    );
  }

  Widget txtLoginWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 13.0, left: 35),
          child: Text("Eleva el aprendizaje",
              style: TextStyle(color: Color(0xFF707070), fontSize: 17)),
        ),
      ],
    );
  }

  Widget inputUsuario() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 28, left: 35, bottom: 10),
          child: Text("Usuario",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF1F3F7),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Usuario registrado',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    return !(value.length >= 6)
                        ? 'Lonitud minima 6 caracteres'
                        : null;
                  }),
            ),
          ),
        )
      ],
    );
  }

  Widget inputContrenia() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 13, left: 35, bottom: 10),
          child: Text("Contraseña",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF1F3F7),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '**********',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    return !(value.length >= 6)
                        ? 'Lonitud minima 6 caracteres'
                        : null;
                  }),
            ),
          ),
        )
      ],
    );
  }

  Widget botonIniciarSesion() {
    return Padding(
      padding: const EdgeInsets.only(top: 38, bottom: 18),
      child: RaisedButton(
          elevation: 8.0,
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          textColor: Colors.white,
          color: Color(0xFF8F32DB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 70, right: 70, top: 18, bottom: 18),
            child: Text(
              'Iniciar sesión',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          )),
    );
  }
}
