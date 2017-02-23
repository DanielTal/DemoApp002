import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/Appeals.dart';
import 'dart:async';
import 'package:intl/intl.dart';

@Component
(
    selector: 'moch_personal_site_appeals',
    templateUrl: 'appeals.html',
    styleUrls: const['appeals.css']
)

class AppealsComponent implements OnInit
{
  String Name;
  DataServices _dataServices;
  List<Appeal> models;
  bool isBusy = false;
  AppealsComponent(DataServices this._dataServices)
  {
  }

  void ngOnInit()
  {
    Name = 'רשימת פניות לוועדת ערער';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  String GetID(Appeal model)
  {
    return 'AppealItem${model.Id}';
  }
  String GetIDRef(Appeal model)
  {
    return '#${GetID(model)}';
  }
  String GetHeading(Appeal model)
  {
    return "AppealHeading${model.Id}";
  }

  String MyDateFormat(dateValue)
  {
    String s1 = '';
    try
    {
        if(dateValue is DateTime)
        {
          var x1 = new DateFormat('dd/MM/yyyy');
          s1 = x1.format(dateValue);
        }
        else
        {
          print('type ${dateValue.runtimeType}');
          print('value ${dateValue}');
        }
    }
    catch(e)
    {
      print('exception ${e}');
    }
    return s1;
  }

  Future OnData(Message m) async
  {
    switch(m.eventType)
    {
      case  EventType.AssistanceFileChanhed:
        var responseMap = await _dataServices.getAssistanceFileAppeals(m.EventArg1);
        models = responseMap['models'].map((x) => new Appeal(x)).toList();
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