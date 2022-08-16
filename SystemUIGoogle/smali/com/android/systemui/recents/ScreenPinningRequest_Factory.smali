.class public final Lcom/android/systemui/recents/ScreenPinningRequest_Factory;
.super Ljava/lang/Object;
.source "ScreenPinningRequest_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final navigationModeControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserTracker;

    new-instance v3, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v3, Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaFlags;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;-><init>(Lcom/android/systemui/media/MediaFlags;Landroid/content/Context;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;Ljava/util/concurrent/Executor;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
