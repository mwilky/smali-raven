.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/doze/dagger/DozeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DozeComponentImpl"
.end annotation


# instance fields
.field public dozeAuthRemoverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeAuthRemover;",
            ">;"
        }
    .end annotation
.end field

.field public dozeDockHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeDockHandler;",
            ">;"
        }
    .end annotation
.end field

.field public dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeFalsingManagerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public dozeMachineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeMachine;",
            ">;"
        }
    .end annotation
.end field

.field public dozeMachineServiceProvider:Ldagger/internal/InstanceFactory;

.field public dozePauserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozePauser;",
            ">;"
        }
    .end annotation
.end field

.field public dozeScreenBrightnessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeScreenBrightness;",
            ">;"
        }
    .end annotation
.end field

.field public dozeScreenStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeScreenState;",
            ">;"
        }
    .end annotation
.end field

.field public dozeSuppressorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeSuppressor;",
            ">;"
        }
    .end annotation
.end field

.field public dozeTriggersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeTriggers;",
            ">;"
        }
    .end annotation
.end field

.field public dozeUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeUi;",
            ">;"
        }
    .end annotation
.end field

.field public dozeWallpaperStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeWallpaperState;",
            ">;"
        }
    .end annotation
.end field

.field public providesBrightnessSensorsProvider:Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;

.field public providesDozeMachinePartsProvider:Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeMachinePartsFactory;

.field public providesDozeWakeLockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field public providesWrappedServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeMachineServiceProvider:Ldagger/internal/InstanceFactory;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;-><init>(Ldagger/internal/InstanceFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeWakeLockFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeWakeLockFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/doze/DozePauser_Factory;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v4, v6}, Lcom/android/systemui/doze/DozePauser_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozePauserProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;

    invoke-direct {v3, v2, v6}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideProximitySensorProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideProximityCheckProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v3

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v2

    invoke-static/range {v7 .. v23}, Lcom/android/systemui/doze/DozeTriggers_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeTriggers_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeTriggersProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v15}, Lcom/android/systemui/doze/DozeUi_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeUi_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeUiProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    new-instance v10, Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;

    const/4 v2, 0x1

    invoke-direct {v10, v9, v7, v14, v2}, Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesBrightnessSensorsProvider:Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->devicePostureControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    invoke-static/range {v7 .. v16}, Lcom/android/systemui/doze/DozeScreenBrightness_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeScreenBrightness_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v8, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v15}, Lcom/android/systemui/doze/DozeScreenState_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeScreenState_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeScreenStateProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/doze/DozeWallpaperState_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/doze/DozeWallpaperState_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeWallpaperStateProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/doze/DozeDockHandler_Factory;

    invoke-direct {v4, v2, v3, v6}, Lcom/android/systemui/doze/DozeDockHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeDockHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/keyboard/KeyboardUI_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/keyboard/KeyboardUI_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeAuthRemoverProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v4, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiModeManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/doze/DozeSuppressor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeSuppressor_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeSuppressorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozePauserProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeTriggersProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeUiProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeScreenStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeWallpaperStateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeDockHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeAuthRemoverProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeMachinePartsFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeMachinePartsFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeMachinePartsProvider:Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeMachinePartsFactory;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesWrappedServiceProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v14, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAmbientDisplayConfigurationProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->providesDozeWakeLockProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-static/range {v13 .. v21}, Lcom/android/systemui/doze/DozeMachine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/doze/dagger/DozeModule_ProvidesDozeMachinePartsFactory;)Lcom/android/systemui/doze/DozeMachine_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeMachineProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final getDozeMachine()Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DozeComponentImpl;->dozeMachineProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method
