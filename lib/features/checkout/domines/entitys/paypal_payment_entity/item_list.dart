import 'package:fruts_store/features/Home/domines/entites/CartItemEntity.dart';

import 'item.dart';

class ItemList {
  List<Item>? items;

  ItemList({this.items});

  factory ItemList.fromEntity (List<CartItemEntity> entites){
    return ItemList(
      items: entites.map((e) => Item.fromEntity(e)).toList(),
      );
  }

  toJson(){
    return {
      'items': items?.map((e) => e.toJson()).toList(),
      };
  }

  
}
