import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:hive/hive.dart';

Future createHive() async {
    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();
    // Path with the form: /platform-specific-directory/lenses.db
    final dbPath = join(appDocumentDir.path, '');

    Hive.init(dbPath);
    Hive.box("Lenses");
}