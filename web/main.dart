import 'package:angular2/platform/browser.dart';
import 'package:moch_personal_site/components2/root/root.dart';
import 'package:http/http.dart';
import 'package:angular2/core.dart';
import 'package:http/browser_client.dart' as http;

void main()
{
  //bootstrap(RootComponent);
  bootstrap(RootComponent, [provide(Client, useFactory: () => new  http.BrowserClient(), deps: [])]);
}
