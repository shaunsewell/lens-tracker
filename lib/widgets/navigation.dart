import 'package:flutter/cupertino.dart';


CupertinoNavigationBar customNavigationBar(){
  return CupertinoNavigationBar(
    automaticallyImplyMiddle: false,
    //leading: Icon(CupertinoIcons.settings, size: 40, color: CupertinoColors.activeGreen,),
    trailing: Icon(CupertinoIcons.add, size: 40, color: CupertinoColors.activeGreen,),
    backgroundColor: CupertinoColors.darkBackgroundGray,
  );
}