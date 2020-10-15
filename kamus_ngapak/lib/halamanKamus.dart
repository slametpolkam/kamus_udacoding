import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Kamus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Kamus Bahasa Ngapak';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  String kalimat = " ";
  final _formKey = GlobalKey<FormState>();
  final _kalimat = TextEditingController();

  arti(String a) async {
    var url = 'http://10.254.80.72:81/index.php/kamus';
    // POST KE SISTEM
    var response = await http.post(url,
        // headers: {HttpHeaders.CONTENT_TYPE: "application/json"},
        body: {'kata': a});
    var message = jsonDecode(response.body);
    setState(() {
      kalimat = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _kalimat,
            validator: (value) {
              if (value.isEmpty) {
                return 'Tulung Lebokna Omongan Disit';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () async {
                String z = _kalimat.text;
                arti(z);

                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              },
              child: Text('Pejet'),
            ),
          ),
          Text(
            "Arti : ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(kalimat),
        ],
      ),
    );
  }
}
