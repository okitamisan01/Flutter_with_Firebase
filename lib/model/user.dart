class User{ // どんな情報が必要ですかね
  String name;
  String uid;
  String imagePath;
  String lastMassage;

  User({
    required this.name,
    required this.uid,
    this.imagePath,
    this.lastMassage = " ",
  }
      );
}