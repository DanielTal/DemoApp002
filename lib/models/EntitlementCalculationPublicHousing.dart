class EntitlementCalculationPublicHousing
{
  String TypeName;
  String QueueDetails;
  int QueueNumber;
  
  EntitlementCalculationPublicHousing(jsonMap)
  {
    this.TypeName = jsonMap['TypeName'];
    this.QueueDetails = jsonMap['QueueDetails'];
    this.QueueNumber = jsonMap['QueueNumber'];
  }
}