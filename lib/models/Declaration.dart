class Declaration
{
  DateTime DeclarationDate;
  String DeclarationType;
  String DeclarationCategoryDescription;

  Declaration(jsonMap)
  {
    DeclarationType = jsonMap['DeclarationType'];
    DeclarationCategoryDescription  = jsonMap['DeclarationCategoryDescription'];
  }
}