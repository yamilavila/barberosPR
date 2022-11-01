import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _myImageProfile =
        await secureStorage.getString('ff_myImageProfile') ?? _myImageProfile;
    _barberCalendar = await secureStorage.getStringList('ff_barberCalendar') ??
        _barberCalendar;
    _pmAm = await secureStorage.getString('ff_pmAm') ?? _pmAm;
  }

  late FlutterSecureStorage secureStorage;

  String _myImageProfile = '';
  String get myImageProfile => _myImageProfile;
  set myImageProfile(String _value) {
    _myImageProfile = _value;
    secureStorage.setString('ff_myImageProfile', _value);
  }

  void deleteMyImageProfile() {
    secureStorage.delete(key: 'ff_myImageProfile');
  }

  DateTime? selectDay = DateTime.fromMillisecondsSinceEpoch(1666746720000);

  List<String> _barberCalendar = [
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo'
  ];
  List<String> get barberCalendar => _barberCalendar;
  set barberCalendar(List<String> _value) {
    _barberCalendar = _value;
    secureStorage.setStringList('ff_barberCalendar', _value);
  }

  void deleteBarberCalendar() {
    secureStorage.delete(key: 'ff_barberCalendar');
  }

  void addToBarberCalendar(String _value) {
    _barberCalendar.add(_value);
    secureStorage.setStringList('ff_barberCalendar', _barberCalendar);
  }

  void removeFromBarberCalendar(String _value) {
    _barberCalendar.remove(_value);
    secureStorage.setStringList('ff_barberCalendar', _barberCalendar);
  }

  String username = 'Name';

  String authtoken = '';

  String startDate = '';

  String endDate = '';

  String password = '';

  int count = 0;

  String _pmAm = '';
  String get pmAm => _pmAm;
  set pmAm(String _value) {
    _pmAm = _value;
    secureStorage.setString('ff_pmAm', _value);
  }

  void deletePmAm() {
    secureStorage.delete(key: 'ff_pmAm');
  }

  int mondayHour = 0;
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
