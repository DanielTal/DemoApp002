import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_entitlementCalculationPublicHousing',
    templateUrl: 'entitlementCalculationPublicHousing.html',
    styleUrls: const['entitlementCalculationPublicHousing.css']
)

class EntitlementCalculationPublicHousingComponent implements OnInit
{
  String Name;
  EntitlementCalculationPublicHousingComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות לדיור ציבורי';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('EntitlementCalculationPublicHousingComponent::OnData m = ${m.EventArg1}');
    print('EntitlementCalculationPublicHousingComponent::OnData m = ${m.eventType}');
    print('EntitlementCalculationPublicHousingComponent::OnData m = ${m.MessageText}');
    print('EntitlementCalculationPublicHousingComponent::OnData m = ${m.messageType}');
  }    
}