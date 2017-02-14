import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_appeals',
    templateUrl: 'appeals.html',
    styleUrls: const['appeals.css']
)

class AppealsComponent implements OnInit
{
  String Name;
  AppealsComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'רשימת פניות לוועדת ערער';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('AppealsComponent::OnData m = ${m.EventArg1}');
    print('AppealsComponent::OnData m = ${m.eventType}');
    print('AppealsComponent::OnData m = ${m.MessageText}');
    print('AppealsComponent::OnData m = ${m.messageType}');
  }
}