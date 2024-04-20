import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';



class ToDoDataBase{

  List toDoList = [

  ];

  //reference 
  final _myBox = Hive.box('myBox');


  //run thix method if this is the 1st time opening this app

  void createInitialData(){
    toDoList = [
      ['Make tutorial', false],
      ['Do exercise', false],
    ];
  }

  //load the data from database
  
  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList); 
  }

}