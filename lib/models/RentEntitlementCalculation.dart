class RentEntitlementCalculation
{
  int Id;
  String Description;
  DateTime ValidUntilDate;
  DateTime SuggestedRenovationDate;

  RentEntitlementCalculation(jsonMap)
  {
      this.Description = jsonMap["Description"];
  }
}