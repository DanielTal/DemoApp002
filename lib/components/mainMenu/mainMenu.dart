import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:moch_personal_site/pages/page1/page1.dart';
import 'package:moch_personal_site/pages/page2/page2.dart';
import 'package:moch_personal_site/pages/page3/page3.dart';

@Component
(
    selector: 'my-main-menu',
    templateUrl: 'mainMenu.html',
    directives: const [ROUTER_DIRECTIVES, Page1Component, Page2Component, Page3Component]
)

class MainMenuComponent
{
}