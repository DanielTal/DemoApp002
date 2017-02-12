class AssistanceFile
{
  int Id;
  String Applicant1Name;
  String Applicant1IdentityNumber;
  String Applicant2Name;
  String Applicant2IdentityNumber;
  String MaritalStatus;
  String Address;
  String Email;
  String Phone1Number;
  String Phone2Number;
  String CaringAuthoritySourceName;

  AssistanceFile(jsonMap)
  {
      this.Applicant1Name = jsonMap['FirstEntity']['FirstName'] + ' ' + jsonMap['FirstEntity']['LastName'];
      this.Applicant2Name = jsonMap['SecondEntity']['FirstName'] + ' ' + jsonMap['SecondEntity']['LastName'];
      this.Applicant1IdentityNumber = jsonMap['FirstEntity']['IdentityNumber'];
      this.Applicant2IdentityNumber = jsonMap['SecondEntity']['IdentityNumber'];
      this.MaritalStatus = jsonMap['MaritalStatus'];
      this.Address = jsonMap['ResidenceAddress'];
      // this.Email = jsonMap["Email"];
      this.Phone1Number = jsonMap['FirstEntity']['MobileNumber'];
      this.Phone2Number = jsonMap['SecondEntity']['MobileNumber'];
      this.CaringAuthoritySourceName = jsonMap['CaringAuthoritySourceDescripion'];
      //this.Id = model["Id"];
      //"CreateDate":"0001-01-01T00:00:00","UpdateDate":"0001-01-01T00:00:00","CreatedUserId":0,"UpdatedUserId":0},"Succeeded":false,"Message":""}
  }
}
//int _toInt(id) => id is int ? id : int.parse(id);