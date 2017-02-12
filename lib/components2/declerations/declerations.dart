import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_declerations',
    templateUrl: 'declerations.html',
    styleUrls: const['declerations.css']
)

class DeclerationsComponent implements OnInit
{
  String Name;
  DeclerationsComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'הצהרות הרשמה';
  }
}