//import 'dart:html';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'main.dart';
//
////void main() => runApp(setn());
//
//class editAtt extends StatelessWidget{
//
////  vx
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Time Table"),
//      ),
//      body: Text("att_chk"),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Navigator.pop(context);
//        },
//        tooltip: 'Increment',
//        child: Icon(Icons.home),
//      ),
//    );
//  }
//
//}



import 'package:flutter/material.dart';
import 'package:validate/validate.dart';

//void main() => runApp(new MaterialApp(
//  title: 'Forms in Flutter',
//  home: new LoginPage(),
//));

class editAtt extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginData {
  String email = '';
  String password = '';
  String subject = '';
}

class _LoginPageState extends State<editAtt> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();

  String _validateEmail(String value) {
    // If empty value, the isEmail function throw a error.
    // So I changed this function with try and catch.
    try {
      Validate.isEmail(value);
    } catch (e) {
      return 'The E-mail Address must be a valid email address.';
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 8) {
      return 'The Password must be at least 8 characters.';
    }

    return null;
  }

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the login data.');
      print('Email: ${_data.email}');
      print('Password: ${_data.password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text('Edit Attendance'),
      ),
      body:
//      new Container(
//          padding: new EdgeInsets.all(20.0),
//          child: new Form(
//            key: this._formKey,
//            child: new ListView(
//              children: <Widget>[
//                new TextFormField(
//                    keyboardType: TextInputType.emailAddress, // Use email input type for emails.
//                    decoration: new InputDecoration(
//                        hintText: 'you@example.com',
//                        labelText: 'E-mail Address'
//                    ),
//                    validator: this._validateEmail,
//                    onSaved: (String value) {
//                      this._data.email = value;
//                    }
//                ),
//                new TextFormField(
//                    obscureText: true, // Use secure text for passwords.
//                    decoration: new InputDecoration(
//                        hintText: 'Password',
//                        labelText: 'Enter your password'
//                    ),
//                    validator: this._validatePassword,
//                    onSaved: (String value) {
//                      this._data.password = value;
//                    }
//                ),
//                new TextFormField(
//                    keyboardType: TextInputType.emailAddress, // Use email input type for emails.
//                    decoration: new InputDecoration(
//                        hintText: 'Mathematics',
//                        labelText: 'Subject Name'
//                    ),
//                    validator: this._validateEmail,
//                    onSaved: (String value) {
//                      this._data.subject = value;
//                    }
//                ),
//                new Container(
//                  width: screenSize.width,
//                  child: new RaisedButton(
//                    child: new Text(
//                      'Login',
//                      style: new TextStyle(
//                          color: Colors.white
//                      ),
//                    ),
//                    onPressed: this.submit,
//                    color: Colors.blue,
//                  ),
//                  margin: new EdgeInsets.only(
//                      top: 20.0
//                  ),
//                )
//              ],
//            ),
//          )
//      ),
        Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Text('Maths'),
                title: Text('75%',textAlign: TextAlign.center,),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text('Maths k'),
                title: Text('75%',textAlign: TextAlign.center,),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text('Maths'),
                title: Text('75%',textAlign: TextAlign.center,),
                trailing: Icon(Icons.edit),
              ),
            ),
//            Card(
//              child: Column(
//                children: <Widget>[
//                  Text('CSE-01'),
//                  ListTile(
//                    leading: Text('Maths'),
//                    title: Text('71%',textAlign: TextAlign.center,),
//                    trailing: Icon(Icons.edit),
//                  ),
//                ],
//              ),
//            ),
//            Card(
//              child: Column(
//                children: <Widget>[
//                  Text('CSE-02'),
//                  ListTile(
//                    title: Text('72%'),
//                    trailing: Icon(Icons.edit),
//                  ),
//                ],
//              ),
//            ),
//            Card(
//              child: Column(
//                children: <Widget>[
//                  Text('CSE-03'),
//                  ListTile(
//                    title: Text('73%'),
//                    trailing: Icon(Icons.edit),
//                  ),
//                ],
//              ),
//            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
//          submit();
//          print('Edited att');
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.done),
      ),
    );
  }
}