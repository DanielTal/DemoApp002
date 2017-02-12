import 'package:angular2/core.dart';
import 'dart:async';

@Component
(
    selector: 'moch_personal_site_searchBar',
    templateUrl: 'searchBar.html',
    styleUrls: const['searchBar.css']
)

class SearchBarComponent implements OnInit
{
  String Name;
  String TZ1;
  @Output() var TZChanged = new EventEmitter<String>();
  SearchBarComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'איתור תיק';
  }
  
  Future Go($event) async
  {
    TZChanged.emit(TZ1);
  }
}