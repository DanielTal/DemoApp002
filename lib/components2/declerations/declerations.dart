import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_declerations',
    templateUrl: 'declerations.html',
    styleUrls: const['declerations.css']
)

class DeclerationsComponent implements OnInit
{
  String Name;
  DataServices _dataServices;
  
  DeclerationsComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'הצהרות הרשמה';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    if(m.eventType == EventType.IdentityNumberChanged)
    {
      _dataServices.getAssistanceFileDeclaration(m.EventArg1);
    }
  }
}