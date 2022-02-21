import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

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
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
              ),
          ],
        ),
      ),
      
    );
  }

Widget  _crearSlider() {
  return Slider(
    activeColor: Colors.indigoAccent,
    label: 'Tamaño de la imagen',
    //divisions: 20,
    value: _valorSlider,
    min: 10.0,
    max: 400.0,
    onChanged:( _bloquearCheck ) ? null : ( valor ){
      setState(() {
         _valorSlider = valor;
      });
     
    },
  );
}

Widget _crearImagen() {
  return  Image(
    image: NetworkImage('https://playpilot.b-cdn.net/6790c15843da11ec93f90a58a9feac02/src/img?optimizer=image&quality=75&width=1280&aspect_ratio=16%3A9'),
    width: _valorSlider,
    fit: BoxFit.contain,
  );
}

Widget  _checkBox() {

  //return Checkbox(
    //value: _bloquearCheck,
    //onChanged: (valor){
      //setState(() {
        //_bloquearCheck = valor!;
      //});
    //},
  //);

  return CheckboxListTile(
    title: Text('Bloquear slider'),
    value: _bloquearCheck,
    onChanged: (valor){
      setState(() {
        _bloquearCheck = valor!;
      });
    },
  );

}

Widget  _crearSwitch() {
return SwitchListTile(
    title: Text('Bloquear slider'),
    value: _bloquearCheck,
    onChanged: (valor){
      setState(() {
        _bloquearCheck = valor;
      });
    },
  );


}
}