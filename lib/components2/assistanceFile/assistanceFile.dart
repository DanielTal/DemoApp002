import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'dart:async';
import 'package:moch_personal_site/models/AssistanceFile.dart';

@Component
(
    selector: 'moch_personal_site_assistance_file',
    templateUrl: 'assistanceFile.html',
    styleUrls: const['assistanceFile.css']
)

class AssistanceFileComponent implements OnInit
{
  String Name;
  DataServices _dataServices;
  AssistanceFile model;

  AssistanceFileComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'פרטי תיק';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  Future OnData(Message m) async
  {
    if(m.eventType == EventType.IdentityNumberChanged)
    {
      model = null;
      var responseMap = await _dataServices.geAssistanceFile(m.EventArg1);
      var assistanceFileMap = responseMap["AssistanceFile"];
      if(assistanceFileMap != null)
      {
        this.model = new AssistanceFile(assistanceFileMap);
      }
    }
  }
}