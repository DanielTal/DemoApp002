//  dart
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';

//  user components
import 'package:moch_personal_site/components2/topBanner/topBanner.dart';

//  pages
import 'package:moch_personal_site/pages/page1/page1.dart';
import 'package:moch_personal_site/pages/page2/page2.dart';
import 'package:moch_personal_site/pages/page3/page3.dart';

//  Services
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'root',
    templateUrl: 'root.html',
    directives: const [ROUTER_DIRECTIVES, materialDirectives, TopBannerComponent],
    providers: const [ROUTER_PROVIDERS, materialProviders, DataServices]
)

@RouteConfig
(
  const 
  [
    const Route(path: '/page1', name: 'Page1', component: Page1Component, useAsDefault: true),
    const Route(path: '/page2', name: 'Page2', component: Page2Component),
    const Route(path: '/page3', name: 'Page3', component: Page3Component),
  ]
)

class RootComponent implements OnInit
{
  
  var name = 'מערכת דיור - שירות עצמי';

  RootComponent()
  {
  }

  void ngOnInit()
  {
     DataServices.eventBus.on(String).listen((String event) 
    {
      print("Root ${event}");
    });
  }
}