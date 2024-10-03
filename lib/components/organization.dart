class Organization {
  int id;
  String name;
  String typeofspecialneed;
  int  phnb;
  String location;


  Organization(this.id,this.name,this.typeofspecialneed, this.phnb, this.location);

  @override
  String toString() {
    return '$name-$typeofspecialneed';
  }
}

List<Organization> org = [


];
