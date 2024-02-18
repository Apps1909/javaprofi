import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
        ),
        FFRoute(
          name: 'MainPage',
          path: '/mainPage',
          builder: (context, params) => MainPageWidget(),
        ),
        FFRoute(
          name: 'LessonJavaIntroduction',
          path: '/lessonJavaIntroduction',
          builder: (context, params) => LessonJavaIntroductionWidget(),
        ),
        FFRoute(
          name: 'LessonJavaMachine',
          path: '/lessonJavaMachine',
          builder: (context, params) => LessonJavaMachineWidget(),
        ),
        FFRoute(
          name: 'LessonInstallation',
          path: '/lessonInstallation',
          builder: (context, params) => LessonInstallationWidget(),
        ),
        FFRoute(
          name: 'LessoFirstProgram',
          path: '/lessoFirstProgram',
          builder: (context, params) => LessoFirstProgramWidget(),
        ),
        FFRoute(
          name: 'LessonVariables',
          path: '/lessonVariables',
          builder: (context, params) => LessonVariablesWidget(),
        ),
        FFRoute(
          name: 'LessonScanner',
          path: '/lessonScanner',
          builder: (context, params) => LessonScannerWidget(),
        ),
        FFRoute(
          name: 'LessonComments',
          path: '/lessonComments',
          builder: (context, params) => LessonCommentsWidget(),
        ),
        FFRoute(
          name: 'LessonOperators',
          path: '/lessonOperators',
          builder: (context, params) => LessonOperatorsWidget(),
        ),
        FFRoute(
          name: 'LessonOperators2',
          path: '/lessonOperators2',
          builder: (context, params) => LessonOperators2Widget(),
        ),
        FFRoute(
          name: 'LessonOperators3',
          path: '/lessonOperators3',
          builder: (context, params) => LessonOperators3Widget(),
        ),
        FFRoute(
          name: 'LessonIfElse',
          path: '/lessonIfElse',
          builder: (context, params) => LessonIfElseWidget(),
        ),
        FFRoute(
          name: 'LessonCycles',
          path: '/lessonCycles',
          builder: (context, params) => LessonCyclesWidget(),
        ),
        FFRoute(
          name: 'LessonBreakContinue',
          path: '/lessonBreakContinue',
          builder: (context, params) => LessonBreakContinueWidget(),
        ),
        FFRoute(
          name: 'LessonArray',
          path: '/lessonArray',
          builder: (context, params) => LessonArrayWidget(),
        ),
        FFRoute(
          name: 'LessonStrings',
          path: '/lessonStrings',
          builder: (context, params) => LessonStringsWidget(),
        ),
        FFRoute(
          name: 'LessonFunctions',
          path: '/lessonFunctions',
          builder: (context, params) => LessonFunctionsWidget(),
        ),
        FFRoute(
          name: 'LessonScopes',
          path: '/lessonScopes',
          builder: (context, params) => LessonScopesWidget(),
        ),
        FFRoute(
          name: 'LessonOOP',
          path: '/lessonOOP',
          builder: (context, params) => LessonOOPWidget(),
        ),
        FFRoute(
          name: 'LessonConstructors',
          path: '/lessonConstructors',
          builder: (context, params) => LessonConstructorsWidget(),
        ),
        FFRoute(
          name: 'LessonIncapsulation',
          path: '/lessonIncapsulation',
          builder: (context, params) => LessonIncapsulationWidget(),
        ),
        FFRoute(
          name: 'LessonModifiers',
          path: '/lessonModifiers',
          builder: (context, params) => LessonModifiersWidget(),
        ),
        FFRoute(
          name: 'LessonGetSet',
          path: '/lessonGetSet',
          builder: (context, params) => LessonGetSetWidget(),
        ),
        FFRoute(
          name: 'LessonInheratance',
          path: '/lessonInheratance',
          builder: (context, params) => LessonInheratanceWidget(),
        ),
        FFRoute(
          name: 'LessonPolimorphism',
          path: '/lessonPolimorphism',
          builder: (context, params) => LessonPolimorphismWidget(),
        ),
        FFRoute(
          name: 'LessonAbstract',
          path: '/lessonAbstract',
          builder: (context, params) => LessonAbstractWidget(),
        ),
        FFRoute(
          name: 'LessonInterface',
          path: '/lessonInterface',
          builder: (context, params) => LessonInterfaceWidget(),
        ),
        FFRoute(
          name: 'LessonInnerClass',
          path: '/lessonInnerClass',
          builder: (context, params) => LessonInnerClassWidget(),
        ),
        FFRoute(
          name: 'LessonStaticClass',
          path: '/lessonStaticClass',
          builder: (context, params) => LessonStaticClassWidget(),
        ),
        FFRoute(
          name: 'LessonStaticVarMethod',
          path: '/lessonStaticVarMethod',
          builder: (context, params) => LessonStaticVarMethodWidget(),
        ),
        FFRoute(
          name: 'LessonTypes',
          path: '/lessonTypes',
          builder: (context, params) => LessonTypesWidget(),
        ),
        FFRoute(
          name: 'LessonValLinkInMethod',
          path: '/lessonValLinkInMethod',
          builder: (context, params) => LessonValLinkInMethodWidget(),
        ),
        FFRoute(
          name: 'LessonWrappers',
          path: '/lessonWrappers',
          builder: (context, params) => LessonWrappersWidget(),
        ),
        FFRoute(
          name: 'LessonPrivedeniye',
          path: '/lessonPrivedeniye',
          builder: (context, params) => LessonPrivedeniyeWidget(),
        ),
        FFRoute(
          name: 'LessonStringTypes',
          path: '/lessonStringTypes',
          builder: (context, params) => LessonStringTypesWidget(),
        ),
        FFRoute(
          name: 'LessonExceptions',
          path: '/lessonExceptions',
          builder: (context, params) => LessonExceptionsWidget(),
        ),
        FFRoute(
          name: 'LessonAssert',
          path: '/lessonAssert',
          builder: (context, params) => LessonAssertWidget(),
        ),
        FFRoute(
          name: 'LessonGenerics',
          path: '/lessonGenerics',
          builder: (context, params) => LessonGenericsWidget(),
        ),
        FFRoute(
          name: 'LessonAnnotations',
          path: '/lessonAnnotations',
          builder: (context, params) => LessonAnnotationsWidget(),
        ),
        FFRoute(
          name: 'LessonList',
          path: '/lessonList',
          builder: (context, params) => LessonListWidget(),
        ),
        FFRoute(
          name: 'LessonQueue',
          path: '/lessonQueue',
          builder: (context, params) => LessonQueueWidget(),
        ),
        FFRoute(
          name: 'LessonIterator',
          path: '/lessonIterator',
          builder: (context, params) => LessonIteratorWidget(),
        ),
        FFRoute(
          name: 'LessonMap',
          path: '/lessonMap',
          builder: (context, params) => LessonMapWidget(),
        ),
        FFRoute(
          name: 'LessonSet',
          path: '/lessonSet',
          builder: (context, params) => LessonSetWidget(),
        ),
        FFRoute(
          name: 'LessonToString',
          path: '/lessonToString',
          builder: (context, params) => LessonToStringWidget(),
        ),
        FFRoute(
          name: 'LessonClone',
          path: '/lessonClone',
          builder: (context, params) => LessonCloneWidget(),
        ),
        FFRoute(
          name: 'LessonEquals',
          path: '/lessonEquals',
          builder: (context, params) => LessonEqualsWidget(),
        ),
        FFRoute(
          name: 'LessonHashCode',
          path: '/lessonHashCode',
          builder: (context, params) => LessonHashCodeWidget(),
        ),
        FFRoute(
          name: 'LessonDefault',
          path: '/lessonDefault',
          builder: (context, params) => LessonDefaultWidget(),
        ),
        FFRoute(
          name: 'LessonAnonimousClass',
          path: '/lessonAnonimousClass',
          builder: (context, params) => LessonAnonimousClassWidget(),
        ),
        FFRoute(
          name: 'LessonFuncInt',
          path: '/lessonFuncInt',
          builder: (context, params) => LessonFuncIntWidget(),
        ),
        FFRoute(
          name: 'LessonLambda',
          path: '/lessonLambda',
          builder: (context, params) => LessonLambdaWidget(),
        ),
        FFRoute(
          name: 'LessonStream',
          path: '/lessonStream',
          builder: (context, params) => LessonStreamWidget(),
        ),
        FFRoute(
          name: 'LessonPrintSW',
          path: '/lessonPrintSW',
          builder: (context, params) => LessonPrintSWWidget(),
        ),
        FFRoute(
          name: 'LessonFileOutInput',
          path: '/lessonFileOutInput',
          builder: (context, params) => LessonFileOutInputWidget(),
        ),
        FFRoute(
          name: 'LessonDataStream',
          path: '/lessonDataStream',
          builder: (context, params) => LessonDataStreamWidget(),
        ),
        FFRoute(
          name: 'LessonBufferedStream',
          path: '/lessonBufferedStream',
          builder: (context, params) => LessonBufferedStreamWidget(),
        ),
        FFRoute(
          name: 'LessonStringWR',
          path: '/lessonStringWR',
          builder: (context, params) => LessonStringWRWidget(),
        ),
        FFRoute(
          name: 'LessonSequenceStream',
          path: '/lessonSequenceStream',
          builder: (context, params) => LessonSequenceStreamWidget(),
        ),
        FFRoute(
          name: 'LesssonPipedStream',
          path: '/lesssonPipedStream',
          builder: (context, params) => LesssonPipedStreamWidget(),
        ),
        FFRoute(
          name: 'LessonPushBackStream',
          path: '/lessonPushBackStream',
          builder: (context, params) => LessonPushBackStreamWidget(),
        ),
        FFRoute(
          name: 'LessonOutputStreamWriter',
          path: '/lessonOutputStreamWriter',
          builder: (context, params) => LessonOutputStreamWriterWidget(),
        ),
        FFRoute(
          name: 'LessonObjectStream',
          path: '/lessonObjectStream',
          builder: (context, params) => LessonObjectStreamWidget(),
        ),
        FFRoute(
          name: 'LessonFilterStream',
          path: '/lessonFilterStream',
          builder: (context, params) => LessonFilterStreamWidget(),
        ),
        FFRoute(
          name: 'LessonFile',
          path: '/lessonFile',
          builder: (context, params) => LessonFileWidget(),
        ),
        FFRoute(
          name: 'LessonExtendsThread',
          path: '/lessonExtendsThread',
          builder: (context, params) => LessonExtendsThreadWidget(),
        ),
        FFRoute(
          name: 'LessonExtendsRunnable',
          path: '/lessonExtendsRunnable',
          builder: (context, params) => LessonExtendsRunnableWidget(),
        ),
        FFRoute(
          name: 'LessonVolatile',
          path: '/lessonVolatile',
          builder: (context, params) => LessonVolatileWidget(),
        ),
        FFRoute(
          name: 'LessonJoin',
          path: '/lessonJoin',
          builder: (context, params) => LessonJoinWidget(),
        ),
        FFRoute(
          name: 'LessonSynchronized',
          path: '/lessonSynchronized',
          builder: (context, params) => LessonSynchronizedWidget(),
        ),
        FFRoute(
          name: 'LessonSinchronizedStatic',
          path: '/lessonSinchronizedStatic',
          builder: (context, params) => LessonSinchronizedStaticWidget(),
        ),
        FFRoute(
          name: 'LessonWaitNotify',
          path: '/lessonWaitNotify',
          builder: (context, params) => LessonWaitNotifyWidget(),
        ),
        FFRoute(
          name: 'LessonYield',
          path: '/lessonYield',
          builder: (context, params) => LessonYieldWidget(),
        ),
        FFRoute(
          name: 'LessonSemaphore',
          path: '/lessonSemaphore',
          builder: (context, params) => LessonSemaphoreWidget(),
        ),
        FFRoute(
          name: 'LessonReentrantLock',
          path: '/lessonReentrantLock',
          builder: (context, params) => LessonReentrantLockWidget(),
        ),
        FFRoute(
          name: 'LessonCountDownLatch',
          path: '/lessonCountDownLatch',
          builder: (context, params) => LessonCountDownLatchWidget(),
        ),
        FFRoute(
          name: 'LessonCyclicBarrier',
          path: '/lessonCyclicBarrier',
          builder: (context, params) => LessonCyclicBarrierWidget(),
        ),
        FFRoute(
          name: 'LessonInterrupt',
          path: '/lessonInterrupt',
          builder: (context, params) => LessonInterruptWidget(),
        ),
        FFRoute(
          name: 'LessonCallable',
          path: '/lessonCallable',
          builder: (context, params) => LessonCallableWidget(),
        ),
        FFRoute(
          name: 'LessonExecutorService',
          path: '/lessonExecutorService',
          builder: (context, params) => LessonExecutorServiceWidget(),
        ),
        FFRoute(
          name: 'LessonReadWriteLock',
          path: '/lessonReadWriteLock',
          builder: (context, params) => LessonReadWriteLockWidget(),
        ),
        FFRoute(
          name: 'LessonThreadLocal',
          path: '/lessonThreadLocal',
          builder: (context, params) => LessonThreadLocalWidget(),
        ),
        FFRoute(
          name: 'LessonForkJoin',
          path: '/lessonForkJoin',
          builder: (context, params) => LessonForkJoinWidget(),
        ),
        FFRoute(
          name: 'LessonServlet',
          path: '/lessonServlet',
          builder: (context, params) => LessonServletWidget(),
        ),
        FFRoute(
          name: 'LessonFirstServlet',
          path: '/lessonFirstServlet',
          builder: (context, params) => LessonFirstServletWidget(),
        ),
        FFRoute(
          name: 'LessonAnotherServletMethods',
          path: '/lessonAnotherServletMethods',
          builder: (context, params) => LessonAnotherServletMethodsWidget(),
        ),
        FFRoute(
          name: 'LessonWebServlet',
          path: '/lessonWebServlet',
          builder: (context, params) => LessonWebServletWidget(),
        ),
        FFRoute(
          name: 'LessonGetPost',
          path: '/lessonGetPost',
          builder: (context, params) => LessonGetPostWidget(),
        ),
        FFRoute(
          name: 'LessonServletRedirect',
          path: '/lessonServletRedirect',
          builder: (context, params) => LessonServletRedirectWidget(),
        ),
        FFRoute(
          name: 'LessonServletCookies',
          path: '/lessonServletCookies',
          builder: (context, params) => LessonServletCookiesWidget(),
        ),
        FFRoute(
          name: 'LessonServletSeesion',
          path: '/lessonServletSeesion',
          builder: (context, params) => LessonServletSeesionWidget(),
        ),
        FFRoute(
          name: 'LessonServletConfig',
          path: '/lessonServletConfig',
          builder: (context, params) => LessonServletConfigWidget(),
        ),
        FFRoute(
          name: 'LessonServletContext',
          path: '/lessonServletContext',
          builder: (context, params) => LessonServletContextWidget(),
        ),
        FFRoute(
          name: 'LessonServletEncUrl',
          path: '/lessonServletEncUrl',
          builder: (context, params) => LessonServletEncUrlWidget(),
        ),
        FFRoute(
          name: 'LessonServletSynchro',
          path: '/lessonServletSynchro',
          builder: (context, params) => LessonServletSynchroWidget(),
        ),
        FFRoute(
          name: 'LessonServletFilter',
          path: '/lessonServletFilter',
          builder: (context, params) => LessonServletFilterWidget(),
        ),
        FFRoute(
          name: 'LessonServletListeners',
          path: '/lessonServletListeners',
          builder: (context, params) => LessonServletListenersWidget(),
        ),
        FFRoute(
          name: 'LessonServletAsync',
          path: '/lessonServletAsync',
          builder: (context, params) => LessonServletAsyncWidget(),
        ),
        FFRoute(
          name: 'LessonFirstJSP',
          path: '/lessonFirstJSP',
          builder: (context, params) => LessonFirstJSPWidget(),
        ),
        FFRoute(
          name: 'LessonJSPTags',
          path: '/lessonJSPTags',
          builder: (context, params) => LessonJSPTagsWidget(),
        ),
        FFRoute(
          name: 'LessonJspObjects',
          path: '/lessonJspObjects',
          builder: (context, params) => LessonJspObjectsWidget(),
        ),
        FFRoute(
          name: 'LessonJSPBeans',
          path: '/lessonJSPBeans',
          builder: (context, params) => LessonJSPBeansWidget(),
        ),
        FFRoute(
          name: 'LessonJSPExpLang',
          path: '/lessonJSPExpLang',
          builder: (context, params) => LessonJSPExpLangWidget(),
        ),
        FFRoute(
          name: 'LessonJSPMVC',
          path: '/lessonJSPMVC',
          builder: (context, params) => LessonJSPMVCWidget(),
        ),
        FFRoute(
          name: 'LessonJSPJSTL',
          path: '/lessonJSPJSTL',
          builder: (context, params) => LessonJSPJSTLWidget(),
        ),
        FFRoute(
          name: 'LessonSerealization',
          path: '/lessonSerealization',
          builder: (context, params) => LessonSerealizationWidget(),
        ),
        FFRoute(
          name: 'LessonSerializationSerVersUID',
          path: '/lessonSerializationSerVersUID',
          builder: (context, params) => LessonSerializationSerVersUIDWidget(),
        ),
        FFRoute(
          name: 'LessonSerializableTransient',
          path: '/lessonSerializableTransient',
          builder: (context, params) => LessonSerializableTransientWidget(),
        ),
        FFRoute(
          name: 'LessonSingletonSer',
          path: '/lessonSingletonSer',
          builder: (context, params) => LessonSingletonSerWidget(),
        ),
        FFRoute(
          name: 'LessonSerializationExternalizable',
          path: '/lessonSerializationExternalizable',
          builder: (context, params) =>
              LessonSerializationExternalizableWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCFirst',
          path: '/lessonJDBCFirst',
          builder: (context, params) => LessonJDBCFirstWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCTransactions',
          path: '/lessonJDBCTransactions',
          builder: (context, params) => LessonJDBCTransactionsWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCSavePoint',
          path: '/lessonJDBCSavePoint',
          builder: (context, params) => LessonJDBCSavePointWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCIsolationDirty',
          path: '/lessonJDBCIsolationDirty',
          builder: (context, params) => LessonJDBCIsolationDirtyWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCNonDirtyIso',
          path: '/lessonJDBCNonDirtyIso',
          builder: (context, params) => LessonJDBCNonDirtyIsoWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCNonRepIso',
          path: '/lessonJDBCNonRepIso',
          builder: (context, params) => LessonJDBCNonRepIsoWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCPhantomIso',
          path: '/lessonJDBCPhantomIso',
          builder: (context, params) => LessonJDBCPhantomIsoWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCPrStatem',
          path: '/lessonJDBCPrStatem',
          builder: (context, params) => LessonJDBCPrStatemWidget(),
        ),
        FFRoute(
          name: 'LessonJDBCProcedures',
          path: '/lessonJDBCProcedures',
          builder: (context, params) => LessonJDBCProceduresWidget(),
        ),
        FFRoute(
          name: 'LessonLoggingFirst',
          path: '/lessonLoggingFirst',
          builder: (context, params) => LessonLoggingFirstWidget(),
        ),
        FFRoute(
          name: 'LessonLoggingProps',
          path: '/lessonLoggingProps',
          builder: (context, params) => LessonLoggingPropsWidget(),
        ),
        FFRoute(
          name: 'LessonJUNITFirst',
          path: '/lessonJUNITFirst',
          builder: (context, params) => LessonJUNITFirstWidget(),
        ),
        FFRoute(
          name: 'LessonJUNITAnnotations',
          path: '/lessonJUNITAnnotations',
          builder: (context, params) => LessonJUNITAnnotationsWidget(),
        ),
        FFRoute(
          name: 'LessonMockito',
          path: '/lessonMockito',
          builder: (context, params) => LessonMockitoWidget(),
        ),
        FFRoute(
          name: 'LessonSpringFirst',
          path: '/lessonSpringFirst',
          builder: (context, params) => LessonSpringFirstWidget(),
        ),
        FFRoute(
          name: 'LessonSpringSetterVars',
          path: '/lessonSpringSetterVars',
          builder: (context, params) => LessonSpringSetterVarsWidget(),
        ),
        FFRoute(
          name: 'LessonSpringExtFile',
          path: '/lessonSpringExtFile',
          builder: (context, params) => LessonSpringExtFileWidget(),
        ),
        FFRoute(
          name: 'LessonSpringScopes',
          path: '/lessonSpringScopes',
          builder: (context, params) => LessonSpringScopesWidget(),
        ),
        FFRoute(
          name: 'LessonSpringLifeCycle',
          path: '/lessonSpringLifeCycle',
          builder: (context, params) => LessonSpringLifeCycleWidget(),
        ),
        FFRoute(
          name: 'LessonSpringAnnotations',
          path: '/lessonSpringAnnotations',
          builder: (context, params) => LessonSpringAnnotationsWidget(),
        ),
        FFRoute(
          name: 'LessonSpringAutowired',
          path: '/lessonSpringAutowired',
          builder: (context, params) => LessonSpringAutowiredWidget(),
        ),
        FFRoute(
          name: 'LessonSpringClassConfig',
          path: '/lessonSpringClassConfig',
          builder: (context, params) => LessonSpringClassConfigWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCEclipse',
          path: '/lessonSpringMVCEclipse',
          builder: (context, params) => LessonSpringMVCEclipseWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVC',
          path: '/lessonSpringMVC',
          builder: (context, params) => LessonSpringMVCWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCClassMapping',
          path: '/lessonSpringMVCClassMapping',
          builder: (context, params) => LessonSpringMVCClassMappingWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCSimpleForm',
          path: '/lessonSpringMVCSimpleForm',
          builder: (context, params) => LessonSpringMVCSimpleFormWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCFormTag',
          path: '/lessonSpringMVCFormTag',
          builder: (context, params) => LessonSpringMVCFormTagWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCFormTag2',
          path: '/lessonSpringMVCFormTag2',
          builder: (context, params) => LessonSpringMVCFormTag2Widget(),
        ),
        FFRoute(
          name: 'LessonSpringMVCValidation',
          path: '/lessonSpringMVCValidation',
          builder: (context, params) => LessonSpringMVCValidationWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernate',
          path: '/lessonSpringHibernate',
          builder: (context, params) => LessonSpringHibernateWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateHQL',
          path: '/lessonSpringHibernateHQL',
          builder: (context, params) => LessonSpringHibernateHQLWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateHQL2',
          path: '/lessonSpringHibernateHQL2',
          builder: (context, params) => LessonSpringHibernateHQL2Widget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateHQL3',
          path: '/lessonSpringHibernateHQL3',
          builder: (context, params) => LessonSpringHibernateHQL3Widget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernate1to1',
          path: '/lessonSpringHibernate1to1',
          builder: (context, params) => LessonSpringHibernate1to1Widget(),
        ),
        FFRoute(
          name: 'LessonSpringHiberanate1to1bi',
          path: '/lessonSpringHiberanate1to1bi',
          builder: (context, params) => LessonSpringHiberanate1to1biWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernate1toMany',
          path: '/lessonSpringHibernate1toMany',
          builder: (context, params) => LessonSpringHibernate1toManyWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateFetchType',
          path: '/lessonSpringHibernateFetchType',
          builder: (context, params) => LessonSpringHibernateFetchTypeWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateManyToMany',
          path: '/lessonSpringHibernateManyToMany',
          builder: (context, params) => LessonSpringHibernateManyToManyWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMaven',
          path: '/lessonSpringMaven',
          builder: (context, params) => LessonSpringMavenWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMavenCreateApp',
          path: '/lessonSpringMavenCreateApp',
          builder: (context, params) => LessonSpringMavenCreateAppWidget(),
        ),
        FFRoute(
          name: 'LessonSpringMavenPom',
          path: '/lessonSpringMavenPom',
          builder: (context, params) => LessonSpringMavenPomWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateCrud',
          path: '/lessonSpringHibernateCrud',
          builder: (context, params) => LessonSpringHibernateCrudWidget(),
        ),
        FFRoute(
          name: 'LessonSpringHibernateCrudWithService',
          path: '/lessonSpringHibernateCrudWithService',
          builder: (context, params) =>
              LessonSpringHibernateCrudWithServiceWidget(),
        ),
        FFRoute(
          name: 'LessonSpringRest',
          path: '/lessonSpringRest',
          builder: (context, params) => LessonSpringRestWidget(),
        ),
        FFRoute(
          name: 'LessonSpringRestApp',
          path: '/lessonSpringRestApp',
          builder: (context, params) => LessonSpringRestAppWidget(),
        ),
        FFRoute(
          name: 'LessonSpringRestCRUD',
          path: '/lessonSpringRestCRUD',
          builder: (context, params) => LessonSpringRestCRUDWidget(),
        ),
        FFRoute(
          name: 'LessonSpringBoot',
          path: '/lessonSpringBoot',
          builder: (context, params) => LessonSpringBootWidget(),
        ),
        FFRoute(
          name: 'LessonSpringBootCrud',
          path: '/lessonSpringBootCrud',
          builder: (context, params) => LessonSpringBootCrudWidget(),
        ),
        FFRoute(
          name: 'LessonSpringBootCrudData',
          path: '/lessonSpringBootCrudData',
          builder: (context, params) => LessonSpringBootCrudDataWidget(),
        ),
        FFRoute(
          name: 'LessonSpringBootCrudDataRest',
          path: '/lessonSpringBootCrudDataRest',
          builder: (context, params) => LessonSpringBootCrudDataRestWidget(),
        ),
        FFRoute(
          name: 'LessonDBbasics',
          path: '/lessonDBbasics',
          builder: (context, params) => LessonDBbasicsWidget(),
        ),
        FFRoute(
          name: 'LessonDB1toMany',
          path: '/lessonDB1toMany',
          builder: (context, params) => LessonDB1toManyWidget(),
        ),
        FFRoute(
          name: 'LessonDBManytoMany',
          path: '/lessonDBManytoMany',
          builder: (context, params) => LessonDBManytoManyWidget(),
        ),
        FFRoute(
          name: 'LessonDB1to1',
          path: '/lessonDB1to1',
          builder: (context, params) => LessonDB1to1Widget(),
        ),
        FFRoute(
          name: 'LessonSqlMysql',
          path: '/lessonSqlMysql',
          builder: (context, params) => LessonSqlMysqlWidget(),
        ),
        FFRoute(
          name: 'LessonSqlDDL',
          path: '/lessonSqlDDL',
          builder: (context, params) => LessonSqlDDLWidget(),
        ),
        FFRoute(
          name: 'LessonSqlDML',
          path: '/lessonSqlDML',
          builder: (context, params) => LessonSqlDMLWidget(),
        ),
        FFRoute(
          name: 'LessonSqlAgrFunc',
          path: '/lessonSqlAgrFunc',
          builder: (context, params) => LessonSqlAgrFuncWidget(),
        ),
        FFRoute(
          name: 'LessonSqlGroupByHaving',
          path: '/lessonSqlGroupByHaving',
          builder: (context, params) => LessonSqlGroupByHavingWidget(),
        ),
        FFRoute(
          name: 'LessonSqlSubquery',
          path: '/lessonSqlSubquery',
          builder: (context, params) => LessonSqlSubqueryWidget(),
        ),
        FFRoute(
          name: 'LessonSqlJoin',
          path: '/lessonSqlJoin',
          builder: (context, params) => LessonSqlJoinWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLFirst',
          path: '/lessonHTMLFirst',
          builder: (context, params) => LessonHTMLFirstWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLtags',
          path: '/lessonHTMLtags',
          builder: (context, params) => LessonHTMLtagsWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLattrs',
          path: '/lessonHTMLattrs',
          builder: (context, params) => LessonHTMLattrsWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLCSSFirst',
          path: '/lessonHTMLCSSFirst',
          builder: (context, params) => LessonHTMLCSSFirstWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLCSSClasses',
          path: '/lessonHTMLCSSClasses',
          builder: (context, params) => LessonHTMLCSSClassesWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLCSSdiv',
          path: '/lessonHTMLCSSdiv',
          builder: (context, params) => LessonHTMLCSSdivWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLCSSstructure',
          path: '/lessonHTMLCSSstructure',
          builder: (context, params) => LessonHTMLCSSstructureWidget(),
        ),
        FFRoute(
          name: 'LessonHTMLCSSselectors',
          path: '/lessonHTMLCSSselectors',
          builder: (context, params) => LessonHTMLCSSselectorsWidget(),
        ),
        FFRoute(
          name: 'LessonPatternsFactory',
          path: '/lessonPatternsFactory',
          builder: (context, params) => LessonPatternsFactoryWidget(),
        ),
        FFRoute(
          name: 'LessonPatternsSingleton',
          path: '/lessonPatternsSingleton',
          builder: (context, params) => LessonPatternsSingletonWidget(),
        ),
        FFRoute(
          name: 'LessonPatternsTemplate',
          path: '/lessonPatternsTemplate',
          builder: (context, params) => LessonPatternsTemplateWidget(),
        ),
        FFRoute(
          name: 'LessonPatternsDAO',
          path: '/lessonPatternsDAO',
          builder: (context, params) => LessonPatternsDAOWidget(),
        ),
        FFRoute(
          name: 'LessonPatternsFrontController',
          path: '/lessonPatternsFrontController',
          builder: (context, params) => LessonPatternsFrontControllerWidget(),
        ),
        FFRoute(
          name: 'LessonDockerInfo',
          path: '/lessonDockerInfo',
          builder: (context, params) => LessonDockerInfoWidget(),
        ),
        FFRoute(
          name: 'LessonDockerExample',
          path: '/lessonDockerExample',
          builder: (context, params) => LessonDockerExampleWidget(),
        ),
        FFRoute(
          name: 'LessonDockerHub',
          path: '/lessonDockerHub',
          builder: (context, params) => LessonDockerHubWidget(),
        ),
        FFRoute(
          name: 'DonatePage',
          path: '/donatePage',
          builder: (context, params) => DonatePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
