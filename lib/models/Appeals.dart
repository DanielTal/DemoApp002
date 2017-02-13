import 'package:moch_personal_site/models/AppealEssence.dart';

class Appeal
{
  DateTime AppealDate;
  String StatusDescription;
  DateTime ExpectedComitteeDate;
  DateTime DecisionDate;
  String Details;
  List<AppealEssence> AppealEssences;
  Appeal(jsonMap)
  {
    
  }
}