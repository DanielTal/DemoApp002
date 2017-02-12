import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_entitlementCalculationRent',
    templateUrl: 'entitlementCalculationRent.html',
    styleUrls: const['entitlementCalculationRent.css']
)

class EntitlementCalculationRentComponent implements OnInit
{
  String Name;
  EntitlementCalculationRentComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'זכאות לשכר דירה';
  }
}