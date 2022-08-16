.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;
.super Ljava/lang/Object;
.source "TvPipModule_ProvideTvPipNotificationControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final pipMediaControllerProvider:Ljavax/inject/Provider;

.field public final pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

.field public final tvPipBoundsStateProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->tvPipBoundsStateProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/pip/PipMediaController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->tvPipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/os/Handler;

    new-instance p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Landroid/os/Handler;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipMediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/condition/Monitor;

    iget-object v4, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->pipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->tvPipBoundsStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/settings/UserTracker;

    new-instance p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/condition/Monitor;Ljavax/inject/Provider;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
