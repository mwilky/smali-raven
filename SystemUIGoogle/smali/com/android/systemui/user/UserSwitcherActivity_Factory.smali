.class public final Lcom/android/systemui/user/UserSwitcherActivity_Factory;
.super Ljava/lang/Object;
.source "UserSwitcherActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final layoutInflaterProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;

.field public final userSwitcherControllerProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p7, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/user/UserSwitcherActivity_Factory;
    .locals 9

    new-instance v8, Lcom/android/systemui/user/UserSwitcherActivity_Factory;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/user/UserSwitcherActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v8
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/settings/UserTracker;

    new-instance p0, Lcom/android/systemui/user/UserSwitcherActivity;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/user/UserSwitcherActivity;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/autorotate/DataLogger;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/autorotate/AutorotateDataService;-><init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/google/android/systemui/autorotate/DataLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
