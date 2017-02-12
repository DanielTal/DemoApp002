import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_messages',
    templateUrl: 'messages.html',
    styleUrls: const['messages.css']
)

class MessagesComponent implements OnInit
{
  String Name;
  MessagesComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'הודעות';
  }
}