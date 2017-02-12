import 'package:angular2/core.dart';
import 'dart:async';

@Component
(
    selector: 'my-find-by-identity-number',
    templateUrl: 'findByIdentityNumber.html'
)

class FindByIdentityNumberComponent
{
  var name = 'FindByIdentityNumberComponent';
  String TZ1;
  @Output() var TZChanged = new EventEmitter<String>();
  Future Go($event) async
  {
    TZChanged.emit(TZ1);
  }
}