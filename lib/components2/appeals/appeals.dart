import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_appeals',
    templateUrl: 'appeals.html',
    styleUrls: const['appeals.css']
)

class AppealsComponent implements OnInit
{
  String Name;
  AppealsComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'רשימת פניות לוועדת ערער';
  }
}