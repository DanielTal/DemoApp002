import 'package:moch_personal_site/models/AssistanceFile.dart';
import 'package:moch_personal_site/services/DataServices.dart';

import 'package:angular2/core.dart';
import 'dart:async';

@Component
(
    selector: 'my-assistance-file',
    templateUrl: 'assistanceFile.html',
    providers: const [DataServices]
)

class AssistanceFileComponent implements OnInit, OnChanges
{
  final DataServices _DataServices;
  AssistanceFile assistanceFile = null;
  @Input() String TZ;
  @Output() var StatusMessage = new EventEmitter<String>();
  @Output() var Status = new EventEmitter<bool>();

  AssistanceFileComponent(DataServices this._DataServices)
  {
  }

  void ngOnInit()
  {
  }

  Future ngOnChanges(Map<String, SimpleChange> changes) async
  {
    this.assistanceFile = null;
    if(TZ != null && !TZ.isEmpty) 
    {
      var responseMap = await _DataServices.geAssistanceFile(TZ.toString());
      MapResponse(responseMap);
      var assistanceFileMap = responseMap["AssistanceFileDetails"]['AssistanceFile'];
      if(assistanceFileMap != null)
      {
        print ('assistanceFileMap : ${assistanceFileMap}');
        this.assistanceFile = new AssistanceFile(assistanceFileMap);
      }
    }
  }

  void MapResponse(dynamic responseMap)
  {
    var message = responseMap["Message"];
    StatusMessage.emit(message);
    
    var status = responseMap["Succeeded"];
    print("Status Type : ${status.runtimeType.toString()}");
    Status.emit(status);
  }
}