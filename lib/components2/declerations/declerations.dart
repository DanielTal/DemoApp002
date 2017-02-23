import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/Declaration.dart';
import 'dart:async';

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
  List<Declaration> models;
  bool isBusy = false;
  
  DeclerationsComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'הצהרות הרשמה';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  Future OnData(Message m) async
  {
    switch(m.eventType)
    {
      case EventType.AssistanceFileChanhed:
        var responseMap = await _dataServices.getAssistanceFileDeclaration(m.EventArg1);
        models = responseMap['models'].map((x) => new Declaration(x)).toList();
        isBusy = false;
        break;
      case EventType.IdentityNumberChanged:
        isBusy = true;
        if(models != null)
        {
          models.clear();
          models = null;
        }
        break;
      default:
        break;
    }
  }
}