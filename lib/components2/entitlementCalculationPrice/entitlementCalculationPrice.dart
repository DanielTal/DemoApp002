import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'dart:async';
import 'package:moch_personal_site/models/EntitlementCalculationPrice.dart';

@Component
(
    selector: 'moch_personal_site_EntitlementCalculationPrice',
    templateUrl: 'entitlementCalculationPrice.html',
    styleUrls: const['entitlementCalculationPrice.css']
)

class EntitlementCalculationPriceComponent implements OnInit
{
  String Name;
  EntitlementCalculationPrice model;
  DataServices _dataServices;
  
  EntitlementCalculationPriceComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות למחיר מפוקח';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  Future OnData(Message m) async
  {
    if(m.eventType == EventType.AssistanceFileChanhed)
    {
      //_dataServices.getAssistanceFileEntitlements(m.EventArg1);
    }
  }  
}