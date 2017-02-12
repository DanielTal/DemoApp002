import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_nextPayment',
    templateUrl: 'nextPayment.html',
    styleUrls: const['nextPayment.css']
)

class NextPaymentComponent implements OnInit
{
  String Name;
  NextPaymentComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'התשלום הבא';
  }
}