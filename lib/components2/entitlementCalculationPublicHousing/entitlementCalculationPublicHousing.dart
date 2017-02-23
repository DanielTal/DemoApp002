import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/EntitlementCalculationPublicHousing.dart';
import 'dart:async';

@Component
(
    selector: 'moch_personal_site_entitlementCalculationPublicHousing',
    templateUrl: 'entitlementCalculationPublicHousing.html',
    styleUrls: const['entitlementCalculationPublicHousing.css']
)

class EntitlementCalculationPublicHousingComponent implements OnInit
{
  String Name;
  EntitlementCalculationPublicHousing model;
  DataServices _dataServices;
  
  EntitlementCalculationPublicHousingComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות לדיור ציבורי';
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