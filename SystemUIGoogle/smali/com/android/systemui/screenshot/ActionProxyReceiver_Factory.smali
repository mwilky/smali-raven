.class public final Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;
.super Ljava/lang/Object;
.source "ActionProxyReceiver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityManagerWrapperProvider:Ljavax/inject/Provider;

.field public final centralSurfacesOptionalProvider:Ljavax/inject/Provider;

.field public final screenshotSmartActionsProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->centralSurfacesOptionalProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->centralSurfacesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v2, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->centralSurfacesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appops/AppOpsController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;-><init>(Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->centralSurfacesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    new-instance v2, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/screenshot/ActionProxyReceiver;-><init>(Ljava/util/Optional;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/screenshot/ScreenshotSmartActions;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->centralSurfacesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IActivityManager;

    new-instance v2, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
