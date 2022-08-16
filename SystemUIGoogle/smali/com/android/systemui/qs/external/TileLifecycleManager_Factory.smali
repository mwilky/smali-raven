.class public final Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;
.super Ljava/lang/Object;
.source "TileLifecycleManager_Factory.java"


# instance fields
.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final packageManagerAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/PackageManagerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/quicksettings/IQSService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/qs/external/PackageManagerAdapter_Factory;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->serviceProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->packageManagerAdapterProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method
