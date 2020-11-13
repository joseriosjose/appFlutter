import 'package:alertatemprana/libraries/PaletteColors.dart';
import 'package:alertatemprana/views/indicadores.dart';
import 'package:flutter/material.dart';
import './vistaAlumno.dart';
import './informacionAlumno.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  List<Widget> views;
  TabController _tabController;

  void _tabControllerListener() {
    setState(() {
      _selectedIndex = _tabController.index;
    });
  }

  @override
  void initState() {
    _getOptionPage();
    _tabController = TabController(
        vsync: this, length: views.length, initialIndex: _selectedIndex);
    _tabController.addListener(_tabControllerListener);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.removeListener(_tabControllerListener);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: views,
          controller: _tabController,
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            fixedColor: PaletteColors.purplePrimary,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            items: _menuNavegacion()),
      ),
    );
  }

  List<BottomNavigationBarItem> _menuNavegacion() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.school, size: _selectedIndex == 0 ? 35 : 25),
          title: Text('Academico')),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle,
          size: _selectedIndex == 1 ? 35 : 25,
        ),
        title: Text('Escolares'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.assessment,
          size: _selectedIndex == 2 ? 35 : 25,
        ),
        title: Text('Indicadores'),
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _tabController.animateTo(_selectedIndex);
  }

  void _getOptionPage() {
    views = [
      InformacionAlumno(),
      VistaAlumno(),
      Indicadores(),
    ];
  }
}
