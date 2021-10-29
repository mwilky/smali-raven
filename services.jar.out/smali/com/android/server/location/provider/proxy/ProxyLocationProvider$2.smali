.class Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onFlush(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/location/provider/ILocationProvider;->flush()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
