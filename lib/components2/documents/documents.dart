import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_documents',
    templateUrl: 'documents.html',
    styleUrls: const['documents.css']
)

class DocumentsComponent implements OnInit
{
  String Name;
  DocumentsComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'מסמכים שהוגשו על ידי הפונים';
  }
}