import 'package:angular2/core.dart';

@Component
(
    selector: 'moch_personal_site_assistance_file',
    templateUrl: 'assistanceFile.html',
    styleUrls: const['assistanceFile.css']
)

class AssistanceFileComponent implements OnInit
{
  String Name;
  AssistanceFileComponent()
  {
  }

  void ngOnInit()
  {
    Name = 'פרטי תיק';
  }
}