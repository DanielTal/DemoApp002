import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_nextPayment',
    templateUrl: 'nextPayment.html',
    styleUrls: const['nextPayment.css']
)

class NextPaymentComponent implements OnInit
{
  String Name;
  NextPaymentComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'התשלום הבא';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('NextPaymentComponent::OnData m = ${m.EventArg1}');
    print('NextPaymentComponent::OnData m = ${m.eventType}');
    print('NextPaymentComponent::OnData m = ${m.MessageText}');
    print('NextPaymentComponent::OnData m = ${m.messageType}');
  }
}