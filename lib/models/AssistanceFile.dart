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
      this.Applicant1Name = jsonMap['FirstApplicant']['FirstName'] + ' ' + jsonMap['FirstApplicant']['LastName'];
      this.Applicant2Name = jsonMap['SecondApplicant']['FirstName'] + ' ' + jsonMap['SecondApplicant']['LastName'];
      this.Applicant1IdentityNumber = jsonMap['FirstApplicant']['IdentityNumber'];
      this.Applicant2IdentityNumber = jsonMap['SecondApplicant']['IdentityNumber'];
      this.MaritalStatus = jsonMap['MaritalStatus'];
      this.Address = jsonMap['Address'];
      this.Email = jsonMap['Email'];
      this.Phone1Number = jsonMap['FirstApplicant']['PhoneNumber'];
      this.Phone2Number = jsonMap['SecondApplicant']['PhoneNumber'];
      this.CaringAuthoritySourceName = jsonMap['CaringAuthoritySourceName'];
      this.Id = jsonMap['Id'];
      // //"CreateDate":"0001-01-01T00:00:00","UpdateDate":"0001-01-01T00:00:00","CreatedUserId":0,"UpdatedUserId":0},"Succeeded":false,"Message":""}
  }
}
//int _toInt(id) => id is int ? id : int.parse(id);