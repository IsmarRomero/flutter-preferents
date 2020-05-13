import 'package:flutter/widgets.dart';
import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }


  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    WidgetsFlutterBinding.ensureInitialized();
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET Genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value){
    _prefs.setInt('genero', value);
  }
    // GET y SET colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value){
    _prefs.setBool('colorSecundario', value);
  }

   // GET y SET nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (String value){
    _prefs.setString('nombreUsuario', value);
  }

 // GET y SET ultimaPagina
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? HomePage.routeName;
  }

  set ultimaPagina (String value){
    _prefs.setString('ultimaPagina', value);
  }


}