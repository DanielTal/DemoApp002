import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_EntitlementCalculationPrice',
    templateUrl: 'entitlementCalculationPrice.html',
    styleUrls: const['entitlementCalculationPrice.css']
)

class EntitlementCalculationPriceComponent implements OnInit
{
  String Name;
  EntitlementCalculationPriceComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות למחיר מפוקח';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('EntitlementCalculationPriceComponent::OnData m = ${m.EventArg1}');
    print('EntitlementCalculationPriceComponent::OnData m = ${m.eventType}');
    print('EntitlementCalculationPriceComponent::OnData m = ${m.MessageText}');
    print('EntitlementCalculationPriceComponent::OnData m = ${m.messageType}');
  }  
}