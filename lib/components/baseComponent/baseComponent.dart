import 'package:angular2/core.dart';
import 'dart:convert';

class BaseComponent
{
  @Output() var StatusMessage = new EventEmitter<String>();
  @Output() var Status = new EventEmitter<bool>();

  BaseComponent()
  {
  }

  void MapResponse(dynamic responseMap)
  {
    var message = responseMap["Message"];
    StatusMessage.emit(message);
    
    var status = responseMap["Succeeded"];
    print("Status Type : ${status.runtimeType.toString()}");
    Status.emit(status);
  }
}