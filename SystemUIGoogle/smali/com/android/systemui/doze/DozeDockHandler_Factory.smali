.class public final Lcom/android/systemui/doze/DozeDockHandler_Factory;
.super Ljava/lang/Object;
.source "DozeDockHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final configProvider:Ljavax/inject/Provider;

.field public final dockManagerProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider_Factory;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaFlags;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/media/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_NEARBY_DEVICES:Lcom/android/systemui/flags/BooleanFlag;

    invoke-interface {v0, v1}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/BooleanFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    new-instance v1, Lcom/android/systemui/dreams/SmartSpaceComplication;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/dreams/SmartSpaceComplication;-><init>(Landroid/content/Context;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v1, Lcom/android/systemui/SliceBroadcastRelayHandler;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/SliceBroadcastRelayHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dock/DockManager;

    new-instance v1, Lcom/android/systemui/doze/DozeDockHandler;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/dock/DockManager;)V

    return-object v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->dockManagerProvider:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/unfold/UnfoldSharedModule;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler_Factory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
