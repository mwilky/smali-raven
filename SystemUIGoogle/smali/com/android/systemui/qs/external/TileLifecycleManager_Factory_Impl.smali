.class public final Lcom/android/systemui/qs/external/TileLifecycleManager_Factory_Impl;
.super Ljava/lang/Object;
.source "TileLifecycleManager_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;


# instance fields
.field public final delegateFactory:Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory_Impl;->delegateFactory:Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/systemui/qs/external/TileLifecycleManager;
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory_Impl;->delegateFactory:Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/quicksettings/IQSService;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->packageManagerAdapterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Lcom/android/systemui/qs/external/PackageManagerAdapter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-object p0
.end method
