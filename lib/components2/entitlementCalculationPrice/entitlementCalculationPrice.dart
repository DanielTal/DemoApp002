import 'package:angular2/core.dart';

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
  }
}