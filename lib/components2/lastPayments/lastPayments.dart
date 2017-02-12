import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_lastPayments',
    templateUrl: 'lastPayments.html',
    styleUrls: const['lastPayments.css']
)

class LastPaymentComponent implements OnInit
{
  String Name;
  LastPaymentComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'תשלומים אחרונים';
  }
}