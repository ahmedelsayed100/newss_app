import 'package:flutter/cupertino.dart';

class PageViewModel {
  String _title;
  String _description;
  String _imageUrl;
  IconData _icon;
  PageViewModel([this._title, this._description, this._imageUrl, this._icon]);

  String get title => _title;
  String get description => _description;
  String get imageUrl => _imageUrl;
  IconData get icon => _icon;
}
