import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'lesson_wait_notify_model.dart';
export 'lesson_wait_notify_model.dart';

class LessonWaitNotifyWidget extends StatefulWidget {
  const LessonWaitNotifyWidget({Key? key}) : super(key: key);

  @override
  _LessonWaitNotifyWidgetState createState() => _LessonWaitNotifyWidgetState();
}

class _LessonWaitNotifyWidgetState extends State<LessonWaitNotifyWidget> {
  late LessonWaitNotifyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final canshow = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    Appodeal.setBannerCallbacks(
        onBannerLoaded: (isPrecache) async => {
              print('onBannerLoaded'),
              canshow.value =
                  await Appodeal.canShow(AppodealAdType.BannerBottom),
              print(canshow.value)
            });
    _model = createModel(context, () => LessonWaitNotifyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }
    return PopScope(
      onPopInvoked: (didPop) {
        Appodeal.destroy(AppodealAdType.BannerBottom);
        context.safePop();
      },
      canPop: false,
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF6DBBEE),
            automaticallyImplyLeading: true,
            actions: [],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 52.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6DBBEE),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(19.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Color(0xFF6DBBEE),
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFF6DBBEE),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Appodeal.destroy(
                                        AppodealAdType.BannerBottom);
                                    context.safePop();
                                  },
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6DBBEE),
                                ),
                                child: Container(
                                  width: 76.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(18.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: true,
            toolbarHeight: 0.0,
            elevation: 4.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ValueListenableBuilder(
                  //TODO 2nd: listen playerPointsToAdd
                  valueListenable: canshow,
                  builder: (context, value, widget) {
                    //TODO here you can setState or whatever you need
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, 0, 0, value == false ? 0 : 50),
                        child: Container(
                          width: double.infinity,
                          height: 500.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 40.0),
                                child: PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6DBBEE),
                                      ),
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(11.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        7.0, 8.0, 7.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 5.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Wait/Notify',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          27.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Text(
                                                                'wait/notify - используется если нам нужно приостановить один поток и чтобы он ждал пока другой поток даст разрешение на продолжение выполнения остановленного потока.\nТо есть чтобы один поток дождался формирования какой-либо информации в другом потоке чтобы потом ее использовать\n\nПример программы:                                                  ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 350.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          2.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x35FFFFFF),
                                                                width: 5.0,
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  PageTransition(
                                                                    type: PageTransitionType
                                                                        .fade,
                                                                    child:
                                                                        FlutterFlowExpandedImageView(
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/WaitNotify.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag:
                                                                          'imageTag1',
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag:
                                                                    'imageTag1',
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/WaitNotify.png',
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    'Вывод:',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 350.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          2.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x35FFFFFF),
                                                                width: 5.0,
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  PageTransition(
                                                                    type: PageTransitionType
                                                                        .fade,
                                                                    child:
                                                                        FlutterFlowExpandedImageView(
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/WaitNotifyOut.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag:
                                                                          'imageTag2',
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag:
                                                                    'imageTag2',
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/WaitNotifyOut.png',
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Text(
                                                                'Программа выполняется в следующей последовательности:\n\nЗапускается t2 -> t2 заходит в synchronized метод -> все остальные synchronized методы в obj блокируются и запущенный t1 после t2 не сможет зайти в synchronized блок в obj пока t2 не освободит synchronized блок в obj в который он зашел или пока не дойдет до метода wait -> t2 доходит до wait метода в synchronized, который приостанавливает поток t2 -> t1 теперь может зайти в synchronized блок в obj в который он хотел зайти -> notify уведомляет t2 о том, что он может продолжать работу после завершения работы synchronized метода в который сейчас выполняет поток t1 -> t1 завершает свою работу -> t2 продолжает работу.',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 16.0),
                                  child:
                                      smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController!
                                          .animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 3.0,
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 16.0,
                                      dotHeight: 8.0,
                                      dotColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      activeDotColor: Color(0xFF6DBBEE),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
