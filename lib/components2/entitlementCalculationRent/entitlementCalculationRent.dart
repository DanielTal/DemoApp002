import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/EntitlementCalculationRent.dart';
import 'dart:async'; 

@Component
(
    selector: 'moch_personal_site_entitlementCalculationRent',
    templateUrl: 'entitlementCalculationRent.html',
    styleUrls: const['entitlementCalculationRent.css']
)

class EntitlementCalculationRentComponent implements OnInit
{
  String Name;
  DataServices _dataServices;
  EntitlementCalculationRent model;

  EntitlementCalculationRentComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות לשכר דירה';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  Future OnData(Message m) async
  {
    if(m.eventType == EventType.IdentityNumberChanged)
    {
      model = null;
      var responseMap = await _dataServices.getAssistanceFileEntitlementCalculationRent(m.EventArg1);
      var modelMap = responseMap["model"];
      if(modelMap != null)
      {
        this.model = new EntitlementCalculationRent(modelMap);
      }
    }
  }
}