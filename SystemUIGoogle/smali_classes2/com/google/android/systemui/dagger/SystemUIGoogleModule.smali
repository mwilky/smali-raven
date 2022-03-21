.class abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule.java"


# direct methods
.method public static synthetic $r8$lambda$HseBhS77XMSGuIQBeRNwDMTGHaA(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->lambda$provideUdfpsHbmProvider$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGO3JWSW8Ystc8Gch8gjUX0Qvp4(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->lambda$provideUdfpsHbmProvider$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$provideUdfpsHbmProvider$0(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$provideUdfpsHbmProvider$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/systemui/dagger/SystemUIGoogleModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static provideAllowNotificationLongPress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserContentResolverProvider;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 11

    new-instance v10, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserContentResolverProvider;Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/BatteryController;->init()V

    return-object v10
.end method

.method static provideBcSmartspaceDataPlugin()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceDataProvider;-><init>()V

    return-object v0
.end method

.method static provideDeviceProvisionedController(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->init()V

    return-object p0
.end method

.method static provideDockManager(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/dock/DockManager;
    .locals 9

    new-instance v8, Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DreamlinerUtils;->getInstance(Landroid/content/Context;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v2

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/dreamliner/DockObserver;-><init>(Landroid/content/Context;Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v8
.end method

.method static provideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v6
.end method

.method static provideIThermalService()Landroid/os/IThermalService;
    .locals 1

    const-string v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method static provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->init()V

    return-object v0
.end method

.method static provideLeakReportEmail()Ljava/lang/String;
    .locals 1

    const-string v0, "buganizer-system+187317@google.com"

    return-object v0
.end method

.method public static provideNotifVoiceReplyLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 2

    const-string v0, "NotifVoiceReplyLog"

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(Ljava/lang/String;I)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method static provideRecents(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/recents/Recents;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/recents/Recents;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v0
.end method

.method static provideReverseWirelessCharger(Landroid/content/Context;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_wlc_support_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static provideSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/SensorPrivacyController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;->init()V

    return-object v0
.end method

.method static provideUdfpsHbmProvider(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)Lcom/android/systemui/biometrics/UdfpsHbmProvider;
    .locals 9

    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)V

    return-object v0
.end method

.method static provideUsbManager(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
