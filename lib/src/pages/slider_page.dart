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
    image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/26f4e661-9a5e-4b69-bbf3-b4995e3c2576/degsi6s-23b32a95-018e-4d79-beb3-202213ca0f5c.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI2ZjRlNjYxLTlhNWUtNGI2OS1iYmYzLWI0OTk1ZTNjMjU3NlwvZGVnc2k2cy0yM2IzMmE5NS0wMThlLTRkNzktYmViMy0yMDIyMTNjYTBmNWMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.UVfbRs7_NBSCaV8E0crnhpW_500dXtTHFRlAnsQCi50'),
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