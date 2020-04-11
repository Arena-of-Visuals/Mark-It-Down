//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//void main() => runApp(setn());

class editTT extends StatelessWidget{

//  vx

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var inputSubj = '2';
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Table"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Developer?'),
            onPressed: (){
              _showDev(context);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Choose Day:'),
              DropdownButton(
                value: inputSubj = '2',
                hint: Text('Choose Subject'),
                onChanged: (value){
                    inputSubj = value;
                    print('add subject $value');
                  },
                items: [
                DropdownMenuItem<String>(
                  value: "1",
                  child: Text(
                    "Monday",
                    ),
                  ),
                DropdownMenuItem<String>(
                    value: "2",
                    child: Text(
                    "Tuesday",
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text(
                      "Wednesday",
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text('Current Time-Table'),
          Timeline(
            shrinkWrap: true,
            lineWidth: 1.25,
            position: TimelinePosition.Left,
            children: <TimelineModel>[
              TimelineModel(
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      child: ListTile(
                        leading: Text('9:30'),
                        title: Text('Math'),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                          editT(context);
                        },
                      ),
                    ),
                  ),
                  position: TimelineItemPosition.random,
                  iconBackground: Colors.grey[300],
                  icon: Icon(Icons.today)
              ),
              TimelineModel(
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      child: ListTile(
                        leading: Text('10:30'),
                        title: Text('HSE'),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                          editT(context);
                        },
                      ),
                    ),
                  ),
                  position: TimelineItemPosition.random,
                  iconBackground: Colors.grey[300],
                  icon: Icon(Icons.today)
              ),
              TimelineModel(
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      child: ListTile(
                        leading: Text('9:30'),
                        title: Text('Math'),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                          editT(context);
                        },
                      ),
                    ),
                  ),
                  position: TimelineItemPosition.random,
                  iconBackground: Colors.grey[300],
                  icon: Icon(Icons.today)
              ),
              TimelineModel(
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      child: ListTile(
                        leading: Text('10:30'),
                        title: Text('HSE'),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                          editT(context);
                        },
                      ),
                    ),
                  ),
                  position: TimelineItemPosition.random,
                  iconBackground: Colors.grey[300],
                  icon: Icon(Icons.today)
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.done),
      ),
    );
  }

}


void editT(context){
  String dropdownValue = 'One';
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Edit Time Table'),
          content: Container(
            height: 150,
            child: Column(
              children: <Widget>[
                Text('This shall be a part of new schedule'),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Format: HH : MM'
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.deepPurple
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    dropdownValue = newValue;
                  },
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                      .toList(),
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                print('Added class by dialog');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
  );
}

void _showDev(context){
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      context: context,
      builder: (BuildContext bc){
//        GlobalKey<MyHomePageState> inputTime;
        GlobalKey<FormState> inputTime;
        var inputSubj;
        var _value;
        return Center(
          child: Column(
            children: <Widget>[
              Container(
//                color: Colors.blue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey,
                ),
                child: Center(child: Text('Developed By',style: TextStyle(fontSize: 18, color: Colors.white,),)),
              ),
              Image.asset('assets/img/aov.png', height: 100, alignment: Alignment.center,),
              Text('Arena of Visuals', style: TextStyle(fontSize: 25),),
              ListTile(
                leading: Icon(Icons.open_in_new),
                title: Text('aovisuals.ml'),
                onTap: (){
                  print('Redirecting to wevsite');
                },
              ),
              ListTile(
                leading: Icon(Icons.local_post_office),
                title: Text('aovisuals247@gmail.com'),
                onTap: (){
                  print('Redirecting to company e-mail ');
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Anirudh Vaish'),
                subtitle: Text('Owner'),
                onTap: (){
                  print('Owner info');
                },
              ),
              Text('\nWeb and App devvelopment just a few steps away!\nJoin us for a kick-start',textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),),
//              SizedBox(height: 500,),
            ],
          ),
        );
      }
  );
}