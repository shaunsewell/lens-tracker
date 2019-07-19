import 'package:sembast/sembast.dart';
import 'package:lens_tracker/models/lense.dart';
import 'package:lens_tracker/data/app_database.dart';

class LenseDao {
  static const String STORE_NAME = 'Lenses';
  final _lenseStore = intMapStoreFactory.store(STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future insert(Lense lense) async {
    await _lenseStore.add(await _db, lense.toMap());
  }

  Future update(Lense lense) async {
    final finder = Finder(filter: Filter.byKey(lense.id));
    await _lenseStore.update(
      await _db,
      lense.toMap(),
      finder: finder,
    );
  }

  Future delete(Lense lense) async {
    final finder = Finder(filter: Filter.byKey(lense.id));
    await _lenseStore.delete(
      await _db,
      finder: finder,
    );
  }

  Future<List<Lense>> getAllSortedByID() async {
    final finder = Finder(sortOrders: [
      SortOrder('id', false),
    ]);

    final recordSnapshots = await _lenseStore.find(
      await _db,
      finder: finder,
    );

    // Making a List<Lense> out of List<RecordSnapshot>
    return recordSnapshots.map((snapshot) {
      final lense = Lense.fromMap(snapshot.value);
      lense.id = snapshot.key;
      return lense;
    }).toList();
  }

}