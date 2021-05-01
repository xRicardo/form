import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Personal'),
            CajaName(),
            ComboBox(),
            ComboBoxD(),
            ComboBoxY(),
            Divider(
              height: 100,
              thickness: 1,
            ),
            CajaEmail(),
            CajaPassword(),
            CajaVeriPassword(),
            Text('Contact'),
            Divider(
              height: 50,
              thickness: 1,
            ),
            CajaAddress(),
            CajaCity(),
            ComboBoxW(),
            CajaPhone(),
            Divider(
              height: 50,
              thickness: 10,
              color: Colors.green,
            ),
            Text('Do'),
          ]),
        ),
      ),
    );
  }
}

class ComboBox extends StatefulWidget {
  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<String> _ciudades = [
    'month',
    'Lima',
    'Cuzco',
    'Piura',
    'Tumbes',
    'Amazonas',
    'Áncash',
    'Apurímac',
    'Arequipa',
    'Ayacucho',
    'Cajamarca',
    'Huancavelica',
    'Huánuco',
    'Ica',
    'Junín',
    'La Libertad',
    'Lambayeque',
    'Loreto',
    'Madre de Dios',
    'Moquegua',
    'Pasco',
    'Puno',
    'San Martín',
    'Tacna',
    'Ucayali'
  ];
  String _actual = 'month';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.select_all),
            Expanded(
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option) {
                  setState(() {});
                  _actual = option;
                },
              ),
            ),
          ],
        ),
        Text(_actual)
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _ciudades
        .map((ciudad) => options.add(DropdownMenuItem(
              child: Text(ciudad),
              value: ciudad,
            )))
        .toString();
    return options;
  }
}

class ComboBoxD extends StatefulWidget {
  @override
  _ComboBoxDState createState() => _ComboBoxDState();
}

class _ComboBoxDState extends State<ComboBoxD> {
  List<String> _prac = [
    'Day',
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo',
  ];
  String _actual = 'Day';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.select_all),
            Expanded(
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option) {
                  setState(() {});
                  _actual = option;
                },
              ),
            ),
          ],
        ),
        Text(_actual)
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _prac
        .map((prueba) => options.add(DropdownMenuItem(
              child: Text(prueba),
              value: prueba,
            )))
        .toString();
    return options;
  }
}

class ComboBoxY extends StatefulWidget {
  @override
  _ComboBoxYState createState() => _ComboBoxYState();
}

class _ComboBoxYState extends State<ComboBoxY> {
  List<String> _pr = [
    'Year',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
  ];
  String _actual = 'Year';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.select_all),
            Expanded(
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option) {
                  setState(() {});
                  _actual = option;
                },
              ),
            ),
          ],
        ),
        Text(_actual)
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _pr
        .map((prueb) => options.add(DropdownMenuItem(
              child: Text(prueb),
              value: prueb,
            )))
        .toString();
    return options;
  }
}

class CajaPassword extends StatefulWidget {
  @override
  _CajaPasswordState createState() => _CajaPasswordState();
}

class _CajaPasswordState extends State<CajaPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }
}

class CajaVeriPassword extends StatefulWidget {
  @override
  _CajaVeriPasswordState createState() => _CajaVeriPasswordState();
}

class _CajaVeriPasswordState extends State<CajaVeriPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Verify Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }
}

class CajaEmail extends StatefulWidget {
  @override
  _CajaEmailState createState() => _CajaEmailState();
}

class _CajaEmailState extends State<CajaEmail> {
  String email = 'email';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'john@johndoe.com',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
        email = valor;
      },
    );
  }
}

class CajaName extends StatefulWidget {
  @override
  _CajaNameState createState() => _CajaNameState();
}

class _CajaNameState extends State<CajaName> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          helperText: 'Name',
          labelText: 'John Doe',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
      },
    );
  }
}

class CajaAddress extends StatefulWidget {
  @override
  _CajaAddress createState() => _CajaAddress();
}

class _CajaAddress extends State<CajaAddress> {
  String nombre = '938 Jackson St.';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          helperText: 'Adress',
          labelText: '938 Jackson St.',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
        nombre = valor;
      },
    );
  }
}

class CajaCity extends StatefulWidget {
  @override
  _CajaCity createState() => _CajaCity();
}

class _CajaCity extends State<CajaCity> {
  String nombre = '938 Jackson St.';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          helperText: 'City',
          labelText: '938 Jackson St.',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
        nombre = valor;
      },
    );
  }
}

class CajaPhone extends StatefulWidget {
  @override
  _CajaPhone createState() => _CajaPhone();
}

class _CajaPhone extends State<CajaPhone> {
  String nombre = '837.383.3678';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          helperText: 'Phone',
          labelText: '837.383.3678',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      onChanged: (valor) {
        setState(() {});
        nombre = valor;
      },
    );
  }
}

class ComboBoxW extends StatefulWidget {
  @override
  _ComboBoxWState createState() => _ComboBoxWState();
}

class _ComboBoxWState extends State<ComboBoxW> {
  List<String> _practica = [
    '-Select your State-',
    '-State of Lima-',
    '-State of Trujillo-',
    '-State of La Libertad-',
    '-State of Huaraz-',
  ];
  String _actual = '-Select your State-';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.select_all),
            Expanded(
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option) {
                  setState(() {});
                  _actual = option;
                },
              ),
            ),
          ],
        ),
        Text(_actual)
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _practica
        .map((prueba) => options.add(DropdownMenuItem(
              child: Text(prueba),
              value: prueba,
            )))
        .toString();
    return options;
  }
}

Widget fourButtonsSection = new Container(
    child: new Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    new Text("Lion", style: new TextStyle(fontSize: 16.0)),
    new Text("Tiger", style: new TextStyle(fontSize: 16.0)),
    new Text("Bear", style: new TextStyle(fontSize: 16.0)),
    new Text("Bull", style: new TextStyle(fontSize: 16.0)),
    new Text("Serval", style: new TextStyle(fontSize: 16.0)),
  ],
));
