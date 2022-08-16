.class public final Lcom/android/systemui/media/MediaDataFilter_Factory;
.super Ljava/lang/Object;
.source "MediaDataFilter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final broadcastSenderProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final executorProvider:Ljavax/inject/Provider;

.field public final lockscreenUserManagerProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p8, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastSenderProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->executorProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->systemClockProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaDataFilter_Factory;
    .locals 10

    new-instance v9, Lcom/android/systemui/media/MediaDataFilter_Factory;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaDataFilter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastSenderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/util/time/SystemClock;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/media/MediaUiEventLogger;

    new-instance p0, Lcom/android/systemui/media/MediaDataFilter;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/MediaDataFilter;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/MediaUiEventLogger;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/ManageMedia;

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->broadcastSenderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;

    iget-object v3, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    iget-object v4, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    iget-object v5, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/columbus/actions/LaunchApp;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/actions/ToggleFlashlight;

    const/4 v6, 0x7

    new-array v6, v6, [Lkotlin/Pair;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "assistant"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    new-instance v0, Lkotlin/Pair;

    const-string v7, "media"

    invoke-direct {v0, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v0, v6, v1

    new-instance v0, Lkotlin/Pair;

    const-string/jumbo v1, "screenshot"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v0, v6, v1

    new-instance v0, Lkotlin/Pair;

    const-string/jumbo v1, "overview"

    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v0, v6, v1

    new-instance v0, Lkotlin/Pair;

    const-string v1, "notifications"

    invoke-direct {v0, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v0, v6, v1

    new-instance v0, Lkotlin/Pair;

    const-string v1, "launch"

    invoke-direct {v0, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aput-object v0, v6, v1

    new-instance v0, Lkotlin/Pair;

    const-string v1, "flashlight"

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x6

    aput-object v0, v6, p0

    invoke-static {v6}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
