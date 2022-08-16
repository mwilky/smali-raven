.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NavigationBarComponentImpl"
.end annotation


# instance fields
.field public contextProvider:Ldagger/internal/InstanceFactory;

.field public deadZoneProvider:Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;

.field public factoryProvider:Lcom/android/systemui/statusbar/phone/LightBarController_Factory_Factory;

.field public factoryProvider2:Lcom/android/systemui/statusbar/phone/AutoHideController_Factory_Factory;

.field public navigationBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBar;",
            ">;"
        }
    .end annotation
.end field

.field public navigationBarTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarTransitions;",
            ">;"
        }
    .end annotation
.end field

.field public provideEdgeBackGestureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field public provideLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public provideNavigationBarFrameProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarFrame;",
            ">;"
        }
    .end annotation
.end field

.field public provideNavigationBarviewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarView;",
            ">;"
        }
    .end annotation
.end field

.field public provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field public savedStateProvider:Ldagger/internal/InstanceFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->contextProvider:Ldagger/internal/InstanceFactory;

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideLayoutInflaterFactory;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideLayoutInflaterFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/dreams/dagger/DreamOverlayModule_ProvidesLifecycleFactory;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/dreams/dagger/DreamOverlayModule_ProvidesLifecycleFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v2, v6}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    invoke-static/range {p3 .. p3}, Ldagger/internal/InstanceFactory;->createNullable(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->savedStateProvider:Ldagger/internal/InstanceFactory;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->contextProvider:Ldagger/internal/InstanceFactory;

    new-instance v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v7, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    new-instance v8, Lcom/android/systemui/statusbar/phone/LightBarController_Factory_Factory;

    invoke-direct {v8, v2, v3, v5, v7}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v8, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->factoryProvider:Lcom/android/systemui/statusbar/phone/LightBarController_Factory_Factory;

    iget-object v2, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/phone/AutoHideController_Factory_Factory;

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/statusbar/phone/AutoHideController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v5, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->factoryProvider2:Lcom/android/systemui/statusbar/phone/AutoHideController_Factory_Factory;

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;

    invoke-direct {v5, v2, v4}, Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v5, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->deadZoneProvider:Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;

    iget-object v4, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions_Factory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/systemui/navigationbar/NavigationBarTransitions_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->contextProvider:Ldagger/internal/InstanceFactory;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideEdgeBackGestureHandlerFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/navigationbar/NavigationBarModule_ProvideEdgeBackGestureHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v41, v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideEdgeBackGestureHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideNavigationBarviewProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideNavigationBarFrameProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->savedStateProvider:Ldagger/internal/InstanceFactory;

    iget-object v8, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->contextProvider:Ldagger/internal/InstanceFactory;

    iget-object v9, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v11, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setPipProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->optionalOfRecentsProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v3

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->navBarHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->factoryProvider:Lcom/android/systemui/statusbar/phone/LightBarController_Factory_Factory;

    move-object/from16 v33, v3

    iget-object v3, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->autoHideControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v3

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->factoryProvider2:Lcom/android/systemui/statusbar/phone/AutoHideController_Factory_Factory;

    move-object/from16 v35, v3

    iget-object v3, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v3

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->deadZoneProvider:Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;

    move-object/from16 v38, v2

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->navigationBarTransitionsProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v2

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->setBackAnimationProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v2

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v1

    invoke-static/range {v5 .. v43}, Lcom/android/systemui/navigationbar/NavigationBar_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/navigationbar/NavigationBar_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final getNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$NavigationBarComponentImpl;->navigationBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    return-object p0
.end method