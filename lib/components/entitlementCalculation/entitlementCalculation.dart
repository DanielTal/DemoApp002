import 'package:angular2/core.dart';
import 'dart:async';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/RentEntitlementCalculation.dart';

@Component
(
    selector: 'my-entitlement-calculation',
    templateUrl: 'entitlementCalculation.html'
)

class EntitlementCalculationComponent implements OnChanges
{
  @Input() String TZ;
  final DataServices _DataServices;
  RentEntitlementCalculation model;
  EntitlementCalculationComponent(DataServices this._DataServices)
  {

  }
  Future ngOnChanges(Map<String, SimpleChange> changes) async
  {
    if(TZ != null && !TZ.isEmpty) 
    {
      var responseMap = await _DataServices.geEntitlementCalculation(TZ.toString());
      var modelMap = responseMap["EntitlementCalculation"];
      if(modelMap != null)
        this.model = new RentEntitlementCalculation(modelMap);
    }
  }
}