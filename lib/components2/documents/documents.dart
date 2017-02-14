import 'package:angular2/core.dart';
import 'dart:async';
import 'package:moch_personal_site/services/DataServices.dart';
import 'package:moch_personal_site/models/Document.dart';

@Component
(
    selector: 'moch_personal_site_documents',
    templateUrl: 'documents.html',
    styleUrls: const['documents.css'],
    providers: const[DataServices]
)

class DocumentsComponent implements OnInit, OnChanges
{
  String Name;
  List<Document> documents;

  DocumentsComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'מסמכים שהוגשו על ידי הפונים';
    DataServices.eventBus.on(Message).listen(OnData);
  }

  void OnData(Message m)
  {
    print('Document::OnData m = ${m.EventArg1}');
    print('Document::OnData m = ${m.eventType}');
    print('Document::OnData m = ${m.MessageText}');
    print('Document::OnData m = ${m.messageType}');
  }
  Future ngOnChanges(Map<String, SimpleChange> changes) async
  {
    print("Documents:ngOnChanges ${changes}");
  }
}