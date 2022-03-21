.class public final Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;
.super Ljava/lang/Object;
.source "AssistManagerGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/AssistManagerGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final assistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final googleDefaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final ngaMessageHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final ngaUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final opaEnabledDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final opaEnabledReceiverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final uiHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->controllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->ngaUiControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledReceiverProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->ngaMessageHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->uiHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->defaultUiControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->googleDefaultUiControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    new-instance v20, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v20
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Landroid/view/IWindowManager;Lcom/android/systemui/assist/AssistLogger;)Lcom/google/android/systemui/assist/AssistManagerGoogle;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/assist/ui/DefaultUiController;",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/systemui/assist/AssistLogger;",
            ")",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    new-instance v20, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/systemui/assist/AssistManagerGoogle;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Landroid/view/IWindowManager;Lcom/android/systemui/assist/AssistLogger;)V

    return-object v20
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/AssistManagerGoogle;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/internal/app/AssistUtils;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->ngaUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledReceiverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/assist/PhoneStateMonitor;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->ngaMessageHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->uiHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/os/Handler;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->defaultUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/assist/ui/DefaultUiController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->googleDefaultUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->windowManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/view/IWindowManager;

    iget-object v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/assist/AssistLogger;

    invoke-static/range {v2 .. v20}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->newInstance(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Landroid/view/IWindowManager;Lcom/android/systemui/assist/AssistLogger;)Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->get()Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-result-object p0

    return-object p0
.end method
