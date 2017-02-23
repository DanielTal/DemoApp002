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

enum EventType
{
  IdentityNumberChanged, 
  AssistanceFileChanhed,
}

class Message
{
  String MessageText;
  String EventArg1;
  MessageType messageType;
  EventType eventType;
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
  void SendMessage(String message, String args1, MessageType messageType, EventType eventType)
  {
    Message m = new Message();
    m.MessageText = message;
    m.EventArg1 = args1;
    m.messageType = messageType;
    m.eventType = eventType;
    eventBus.fire(m);
  }  

  // Future<dynamic> geAssistanceFile(String tz) async
  // {
  //   SendMessage("המתן...", "", MessageType.Info, EventType.IdentityNumberChanged);
  //   final response = await _http.get('/Services/api/values/GetAssistanceFile?identityNumber=${tz}');
  //   var responseMap = JSON.decode(response.body);
  //   SendMessage(tz, "", MessageType.Info, EventType.IdentityNumberChanged);
  //   return responseMap;
  // }

  // Future<dynamic> geEntitlementCalculation(String tz) async
  // {
  //   SendMessage("המתן...", "", MessageType.Info, EventType.IdentityNumberChanged);
  //   final response = await _http.get('/Services/api/values/GetRentEntitlementCalculation?identityNumber=${tz}');
  //   var responseMap = JSON.decode(response.body);
  //   SendMessage(tz, "", MessageType.Info, EventType.IdentityNumberChanged);
  //   return responseMap;
  // }  

  Future<dynamic> geAssistanceFile(String tz) async
  {
    final response = await _http.get('/Services/api/values/GetAssistanceFile?identityNumber=${tz}');
    var responseMap = JSON.decode(response.body);
    return responseMap;
  }

  Future<dynamic> getAssistanceFileAppeals(String Id) async
  {
    final response = await _http.get('/Services/api/values/PSGetAppeals?assistanceFileId=${Id}');
    var responseMap = JSON.decode(response.body);
    return responseMap;
  }

  Future<dynamic> getAssistanceFileDeclaration(String Id) async
  {
    final response = await _http.get('/Services/api/values/PSGetDeclarations?assistanceFileId=${Id}');
    var responseMap = JSON.decode(response.body);
    return responseMap;
  }

  Future<dynamic> getAssistanceFileDocuments(String tz) async
  {
    print("getAssistanceFileDocuments");
  }


  
  Future<dynamic> getAssistanceFilePaymentFrames(String tz) async
  {
    print("getAssistanceFilePaymentFrames");
  }

  Future<dynamic> getAssistanceFileLastPayments(String tz) async
  {
    print("getAssistanceFileLastPayments");
  }
  
  Future<dynamic> getAssistanceFileEntitlementCalculationPrice(String tz) async
  {
    // final response = await _http.get('/Services/api/values/GetEntitlementCalculationPrice?identityNumber=${tz}');
    // var responseMap = JSON.decode(response.body);
    // return responseMap;
  }

  Future<dynamic> getAssistanceFileEntitlementCalculationPublicHousing(String tz) async
  {
    // final response = await _http.get('/Services/api/values/GetEntitlementCalculationPublicHousing?identityNumber=${tz}');
    // var responseMap = JSON.decode(response.body);
    // return responseMap;
  }
  
  Future<dynamic> getAssistanceFileEntitlementCalculationRent(String tz) async
  {
    // final response = await _http.get('/Services/api/values/GetEntitlementCalculationRent?identityNumber=${tz}');
    // var responseMap = JSON.decode(response.body);
    // return responseMap;
  }

  Future<dynamic> getAssistanceFileEntitlements(String tz) async
  {
    // final response = await _http.get('/Services/api/values/GetWebLastEntitlementCalculation?assistanceFileId=${tz}');
    // var responseMap = JSON.decode(response.body);
    // return responseMap;
  }
}