import 'package:angular2/core.dart';
import 'package:moch_personal_site/services/DataServices.dart';

@Component
(
    selector: 'moch_personal_site_paymentFrames',
    templateUrl: 'paymentFrames.html',
    styleUrls: const['paymentFrames.css']
)

class PaymentFramesComponent implements OnInit
{
  String Name;
  PaymentFramesComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'מסגרות תשלום';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('PaymentFramesComponent::OnData m = ${m.EventArg1}');
    print('PaymentFramesComponent::OnData m = ${m.eventType}');
    print('PaymentFramesComponent::OnData m = ${m.MessageText}');
    print('PaymentFramesComponent::OnData m = ${m.messageType}');
  }
}