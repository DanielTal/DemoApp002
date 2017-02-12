import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site-top-banner',
    templateUrl: 'topBanner.html',
    styleUrls: const['topBanner.css']
)

class TopBannerComponent implements OnInit
{
  String Name;
  TopBannerComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'מערכת סיוע לדיור';
  }
}