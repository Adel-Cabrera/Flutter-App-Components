import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sliders",
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _checkBoxDos(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Tamaño de la imagen",
      //divisions: 20,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
    );
  }

  Widget _checkBox() {
    return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
        'https://www.freepngimg.com/thumb/hero/26244-5-hero.png',
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBoxDos() {
    return CheckboxListTile(
      title: Text(
        "Bloquear slider",
      ),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text(
        "Bloquear slider",
      ),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
