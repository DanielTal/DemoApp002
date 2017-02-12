import 'package:angular2/core.dart';
import 'package:http/http.dart';
import 'package:event_bus/event_bus.dart';

import 'dart:async';
import 'dart:convert';


enum MessageType
{
  Warnning,
  Error,
  Info
}

class Message
{
  String MessageText;
  MessageType messageType;
}

@Injectable
(
  
)

class DataServices 
{
  final Client _http;
  static EventBus eventBus = new EventBus();
  DataServices(this._http)
  {
  }

  void SendMessage(String message, MessageType messageType)
  {
    Message m = new Message();
    m.MessageText = message;
    m.messageType = messageType;
    eventBus.fire(m);
  }  

  Future<dynamic> geAssistanceFile(String tz) async
  {
    SendMessage("המתן...", MessageType.Info);
    final response = await _http.get('/Services/api/values/GetAssistanceFile?identityNumber=${tz}');
    var responseMap = JSON.decode(response.body);
    SendMessage(tz, MessageType.Info);
    return responseMap;
  }

  Future<dynamic> geEntitlementCalculation(String tz) async
  {
    SendMessage("המתן...", MessageType.Info);
    final response = await _http.get('/Services/api/values/GetRentEntitlementCalculation?identityNumber=${tz}');
    var responseMap = JSON.decode(response.body);
    SendMessage(tz, MessageType.Info);
    return responseMap;
  }  
}