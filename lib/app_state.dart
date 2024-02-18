import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ClicksToShowRating =
          prefs.getInt('ff_ClicksToShowRating') ?? _ClicksToShowRating;
      _stopShowingRating =
          prefs.getInt('ff_stopShowingRating') ?? _stopShowingRating;
      _countFiveEvent =
          prefs.getInt('ff_countFiveEvent') ?? _countFiveEvent;
      _clicksToShowVideo =
          prefs.getInt('ff_clicksToShowVideo') ?? _clicksToShowVideo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _clicksToShowInterstitial = 0;
  int get clicksToShowInterstitial => _clicksToShowInterstitial;
  set clicksToShowInterstitial(int _value) {
    _clicksToShowInterstitial = _value;
  }

  int _ClicksToShowRating = 0;
  int get ClicksToShowRating => _ClicksToShowRating;
  set ClicksToShowRating(int _value) {
    _ClicksToShowRating = _value;
    prefs.setInt('ff_ClicksToShowRating', _value);
  }

  int _stopShowingRating = 0;
  int get stopShowingRating => _stopShowingRating;
  set stopShowingRating(int _value) {
    _stopShowingRating = _value;
    prefs.setInt('ff_stopShowingRating', _value);
  }

  int _countFiveEvent = 0;
  int get countFiveEvent => _countFiveEvent;
  set countFiveEvent(int _value) {
    _countFiveEvent = _value;
    prefs.setInt('ff_countFiveEvent', _value);
  }

  int _clicksToShowVideo = 0;
  int get clicksToShowVideo => _clicksToShowVideo;
  set clicksToShowVideo(int _value) {
    _clicksToShowVideo = _value;
    prefs.setInt('ff_clicksToShowVideo', _value);
  }
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
