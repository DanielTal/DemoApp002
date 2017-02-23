class Appeal
{
  int Id;
  DateTime AppealDate;
  DateTime EstimatedDiscussionDate;
  DateTime ResolutionDate;
  String StatusWithCalculatedEntitlement;
  String HTMLDOMId;

  Appeal(jsonMap)
  {
    AppealDate = DateTime.parse(jsonMap['AppealDate']);
    if(jsonMap['EstimatedDiscussionDate'] != null)
      EstimatedDiscussionDate = DateTime.parse(jsonMap['EstimatedDiscussionDate']);
    Id = jsonMap['Id'];
    if(jsonMap['ResolutionDate'] != null)
      ResolutionDate = DateTime.parse(jsonMap['ResolutionDate']);
    StatusWithCalculatedEntitlement = jsonMap['StatusWithCalculatedEntitlement'];
    HTMLDOMId = jsonMap['HTMLDOMId'];
  }
}