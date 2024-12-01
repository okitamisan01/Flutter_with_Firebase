class User{ // どんな情報が必要ですかね
  String name;
  String uid;
  String? imagePath; //任意項目として扱う場合、型をnullable（String?）に変更
  String? lastMassage;

  User({
    required this.name,
    required this.uid,
    this.imagePath,
    this.lastMassage = " ",
  }
      );
}