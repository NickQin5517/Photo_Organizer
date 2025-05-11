import '../model/model.dart';

class UserController {
  final List<Picture> _allPictures = [
    Picture(url: 'assets/images/1.jpg', location: 'Thunder_Bay', date: DateTime(2024, 12, 25)),
    Picture(url: 'assets/images/2.jpg', location: 'Sudbury', date: DateTime(2024, 11, 25)),
  ];

  List<Picture> getAllPictures() => _allPictures;


}