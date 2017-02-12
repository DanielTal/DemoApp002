import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:moch_personal_site/pages/page1/page1.dart';
import 'package:moch_personal_site/pages/page2/page2.dart';
import 'package:moch_personal_site/pages/page3/page3.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'my-banner',
    templateUrl: 'banner.html',
    directives: const [ROUTER_DIRECTIVES, Page1Component, Page2Component, Page3Component]
)

class BannerComponent implements OnInit
{
  String StatusMessage;

  BannerComponent()
  {
  }

  void ngOnInit()
  {
    StatusMessage = " ";
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    StatusMessage = m.MessageText;
  }
}