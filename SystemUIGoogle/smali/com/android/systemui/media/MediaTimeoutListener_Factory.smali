.class public final Lcom/android/systemui/media/MediaTimeoutListener_Factory;
.super Ljava/lang/Object;
.source "MediaTimeoutListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final mediaControllerFactoryProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->loggerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaTimeoutListener_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/media/MediaControllerFactory;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    new-instance p0, Lcom/android/systemui/media/MediaTimeoutListener;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaTimeoutListener;-><init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaTimeoutLogger;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/time/SystemClock;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mediaControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/flags/FeatureFlags;

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
