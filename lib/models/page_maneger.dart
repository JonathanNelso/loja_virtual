import 'package:flutter/cupertino.dart';

class PageManeger {

PageManeger(this._pageController);

PageController _pageController;

void setPage(int value){
  _pageController.jumpToPage(value);
}

}