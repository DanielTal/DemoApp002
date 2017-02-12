import 'package:angular2/core.dart';

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
  }
}