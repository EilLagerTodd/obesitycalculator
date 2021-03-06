import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiMain(),
    );
  }
}

class BmiMain extends StatefulWidget {
  const BmiMain({Key? key}) : super(key: key);

  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("비만도 계산기")),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key:_formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "키"
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "몸무게",
                ),
                keyboardType: TextInputType.number,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()){

                    }
                  },
                  child: Text("결과"),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}

class BmiResult extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

