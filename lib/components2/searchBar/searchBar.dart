import 'package:angular2/core.dart';
import 'dart:async';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_searchBar',
    templateUrl: 'searchBar.html',
    styleUrls: const['searchBar.css'],
    providers: const[DataServices]
)

class SearchBarComponent implements OnInit
{
  String Name;
  String TZ1;
  @Output() var TZChanged = new EventEmitter<String>();
  DataServices _dataServices;
  SearchBarComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'איתור תיק';
  }
  
  Future Go($event) async
  {
    //TZChanged.emit(TZ1);
    _dataServices.SendMessage('SearchBar::Go', TZ1, MessageType.Info, EventType.IdentityNumberChanged);
  }
}