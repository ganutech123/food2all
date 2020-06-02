import 'package:flutter/material.dart';

class Product{
  final int productId=0;
    String _DisplayName;
   double _Rate;
  final int PreparationTime=0;

  final int IsVeg=0;
  final int ProductGroupId=0;
  final int SubgroupId=0;
  final int DepartmentId=0;

   String _itemImage="";
  final String description="";
  final int isRecommended=0;



  String get DisplayName => _DisplayName;

  set DisplayName(String value) {
    _DisplayName = value;
  }


  double get Rate => _Rate;

  set Rate(double value) {
    _Rate = value;
  }


  String get itemImage => _itemImage;

  set itemImage(String value) {
    _itemImage = value;
  }

  Product(this._itemImage, this._DisplayName,this._Rate);


}