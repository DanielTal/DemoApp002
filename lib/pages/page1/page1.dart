import 'package:angular2/core.dart';
import 'package:moch_personal_site/components2/assistanceFile/assistanceFile.dart';
import 'package:moch_personal_site/components2/messages/messages.dart';
import 'package:moch_personal_site/components2/entitlementCalculationPrice/entitlementCalculationPrice.dart';
import 'package:moch_personal_site/components2/entitlementCalculationRent/entitlementCalculationRent.dart';
import 'package:moch_personal_site/components2/entitlementCalculationPublicHousing/entitlementCalculationPublicHousing.dart';
import 'package:moch_personal_site/components2/paymentFrames/paymentFrames.dart';
import 'package:moch_personal_site/components2/lastPayments/lastPayments.dart';
import 'package:moch_personal_site/components2/nextPayment/nextPayment.dart';
import 'package:moch_personal_site/components2/appeals/appeals.dart';
import 'package:moch_personal_site/components2/declerations/declerations.dart';
import 'package:moch_personal_site/components2/documents/documents.dart';

@Component
(
    selector: 'my-page1',
    templateUrl: 'page1.html',
    directives: const 
      [ AssistanceFileComponent, 
        MessagesComponent, 
        EntitlementCalculationRentComponent, 
        EntitlementCalculationPriceComponent, 
        EntitlementCalculationPublicHousingComponent, 
        PaymentFramesComponent, 
        LastPaymentComponent, 
        NextPaymentComponent, 
        AppealsComponent, 
        DeclerationsComponent, 
        DocumentsComponent]
)

class Page1Component
{
  String TZAPP = "";
  String StatusBarMessage = "";
  
  void TZChanged(e)
  {
    TZAPP = e;
  }

  void StatusMessage(e)
  {
    StatusBarMessage = e;
  }
}