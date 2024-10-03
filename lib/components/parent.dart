class Parent {
  int id;
  String fname;
  String lname;
  int  phnb;
  String location;


  Parent(this.id,this.fname,this.lname, this.phnb, this.location);

  @override
  String toString() {
    return '$fname-$lname';
  }
}

List<Parent> parent = [

];
