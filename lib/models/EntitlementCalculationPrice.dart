class EntitlementCalculationPrice
{
  String EntitlementForTargetPrice;
  String EntitlementForPricing;
  String StatusName;
  DateTime ExpirationDate;
  String Settlements;

  EntitlementCalculationPrice(jsonMap)
  {
    EntitlementForTargetPrice = jsonMap['EntitlementForTargetPrice'];
    EntitlementForPricing = jsonMap['EntitlementForPricing'];
    StatusName = jsonMap['StatusName'];
    ExpirationDate = jsonMap['ExpirationDate'];
    Settlements = jsonMap['Settlements'];
  }
}