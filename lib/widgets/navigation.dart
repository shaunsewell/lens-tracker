import 'package:flutter/cupertino.dart';


CupertinoNavigationBar customNavigationBar(String page, {CupertinoButton addButton}) {
  if (page == 'Overview'){
    return CupertinoNavigationBar(
      //leading: Icon(CupertinoIcons.settings, size: 40, color: CupertinoColors.activeGreen,),
      middle: Text(
          page,
          style: TextStyle(color: CupertinoColors.activeGreen, fontSize: 24),
      ),
      trailing: addButton,
      backgroundColor: CupertinoColors.darkBackgroundGray,
    );
  }
  return CupertinoNavigationBar(
    middle: Text(
      page,
      style: TextStyle(color: CupertinoColors.activeGreen, fontSize: 24),
    ),
    backgroundColor: CupertinoColors.darkBackgroundGray,
  );

}