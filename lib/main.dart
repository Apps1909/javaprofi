import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:java_profi/classes/notif_class.dart';
import 'package:java_profi/generated/l10n.dart';
import 'firebase_options.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:java_profi/app_state.dart';
import 'package:provider/provider.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  AwesomeNotifications().initialize(
    'resource://drawable/flutter_logo',
    [
      NotificationChannel(
          channelKey: 'javaprofi_cahnnel',
          channelName: 'JavaProfi Notifications',
          channelDescription: 'JavaProfi Notifications'),
    ],
    debug: true,
  );
  /*Map? sdkConfiguration = await AppLovinMAX.initialize(
      "0oueOWDuIAmWxi4x4Vb4FEkFZLdzgzmRgTbVWrrdMRLy8UnyzlR_94PWdc16cmJskuZmGrTAqzEARiL571Xdrw");*/
  usePathUrlStrategy();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

//keytool -genkey -v -keystore C:\flutterprojects\java_profi\android\app\upload-keystore.jks ^
//       -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 ^
//       -alias upload
/*
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'dfvserverdvs vdfvadsva',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    });*/
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        // This is just a basic example. For real apps, you must show some
        // friendly dialog box before call the request method.
        // This is very important to not harm the user experience
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    Future(() async {
      AwesomeNotifications().createNotification(
          content: NotificationContent(
              id: 0,
              channelKey: 'javaprofi_cahnnel',
              title: 'Еще не передумали стать Java профи?',
              body: 'Вас ждет много интересного. Продолжайте учебу.'),
          schedule: NotificationCalendar(
              hour: 9, minute: 10, second: 0, repeats: true));
    });
    initialization();
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
  }

  Future<void> initialization() async {
    Appodeal.setTesting(false);
    Appodeal.initialize(
        appKey: "fc86862d47f56a9a875b7889c8be79645aca0a4bb6e2169c",
        adTypes: [
          AppodealAdType.Interstitial,
          AppodealAdType.RewardedVideo,
          AppodealAdType.Banner
        ],
        onInitializationFinished: (errors) => {});
    //initializeInterstitialAds();
    /*ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'dfvserverdvs vdfvadsva',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );*/
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'JavaProfi',
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //locale: Locale('en'),
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        brightness: Brightness.light,
        scrollbarTheme: ScrollbarThemeData(),
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
