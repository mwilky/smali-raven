.class public final Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;
.super Ljava/lang/Object;
.source "ForegroundServiceNotificationListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final foregroundServiceControllerProvider:Ljavax/inject/Provider;

.field public final notifPipelineProvider:Ljavax/inject/Provider;

.field public final notificationEntryManagerProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method

.method public static create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ForegroundServiceController;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/time/SystemClock;

    new-instance p0, Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/ForegroundServiceNotificationListener;-><init>(Landroid/content/Context;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/concurrency/Execution;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    new-instance p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;-><init>([Lcom/android/systemui/util/sensors/ThresholdSensor;[Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;Lcom/android/systemui/statusbar/policy/DevicePostureController;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
