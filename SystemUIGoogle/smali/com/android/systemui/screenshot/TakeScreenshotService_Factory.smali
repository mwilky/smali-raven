.class public final Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;
.super Ljava/lang/Object;
.source "TakeScreenshotService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final devicePolicyManagerProvider:Ljavax/inject/Provider;

.field public final notificationsControllerProvider:Ljavax/inject/Provider;

.field public final screenshotControllerProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ldagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p8, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->screenshotControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->notificationsControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;
    .locals 10

    new-instance v9, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;-><init>(Ldagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v9
.end method

.method public static create$1(Lcom/android/systemui/screenshot/ScreenshotController_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;
    .locals 10

    new-instance v9, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;-><init>(Ldagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->screenshotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->notificationsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance p0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/screenshot/TakeScreenshotService;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->screenshotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->notificationsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance p0, Lcom/android/systemui/battery/BatteryMeterViewController;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
