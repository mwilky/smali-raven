.class public final Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;
.super Ljava/lang/Object;
.source "OverlayToggleTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final backgroundLooperProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final hostProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final omProvider:Ljavax/inject/Provider;

.field public final qsLoggerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p10, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->backgroundLooperProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->omProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;
    .locals 12

    new-instance v11, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;

    const/4 v10, 0x1

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/QSHost;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->backgroundLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/qs/logging/QSLogger;

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->omProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Landroid/content/om/OverlayManager;

    new-instance p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Landroid/content/om/OverlayManager;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->backgroundLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/controls/ui/ControlsUiController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/controls/controller/ControlsBindingController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/OverlayToggleTile_Factory;->omProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/settings/UserTracker;

    new-instance p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/controller/ControlsBindingController;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/settings/UserTracker;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
