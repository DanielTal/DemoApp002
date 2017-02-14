class EntitlementCalculationRent
{
  String Description;
  DateTime ExpirationDate;
  DateTime RenovationDate;

  EntitlementCalculationRent(jsonMap)
  {
    Description = jsonMap['Description'];
    ExpirationDate = jsonMap['ExpirationDate'];
    RenovationDate = jsonMap['RenovationDate'];
  }
}