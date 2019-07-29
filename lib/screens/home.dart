import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/models/lense.dart';

import 'package:lens_tracker/widgets/fab_menu.dart';
import 'package:lens_tracker/widgets/lense_data.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: _openBox(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MainPage(lenses: snapshot.data,);
        } else {
          return LoadingPage();
        }
      },
    );
  }

  Future<List> _openBox() async {
    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);
    final box = await Hive.box("Data");
    final List lenses = await box.get("Lenses").then((onValue) {
      var lenseList = <Lense>[];
      for(final l in onValue){
        lenseList.add(Lense.fromMap(l));
      }
      return lenseList;
    });
    return lenses;
  }
}

class MainPage extends StatelessWidget {

  // Page constructor
  final List<Lense> lenses;
  MainPage({
    @required this.lenses,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) {
        if (lenses != null){
          print(lenses.last.totalWearTime);
          return lenses.last;
        } else {
          final newLense = Lense.init(id: 0,days: 0,totalWearTime: 0,dateStarted: DateTime.now(),type: "Fortnightly");
          updateBox(data: newLense);
          return newLense;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: LenseData(),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2.0,
                        )),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text("${Hive.isBoxOpen('Data')}")),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FabMenu(),
      ),
    );
  }

  updateBox({Lense data}){
    Hive.box("Data").then((onValue) {
      final lenses = [data.toMap()];
      onValue.put("Lenses", lenses);
    });
  }
}

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(

      ),
    );
  }
}
