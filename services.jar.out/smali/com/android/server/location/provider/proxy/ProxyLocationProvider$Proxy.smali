.class Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
.super Landroid/location/provider/ILocationProviderManager$Stub;
.source "ProxyLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Proxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-direct {p0}, Landroid/location/provider/ILocationProviderManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onInitialize$0(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 1

    sget-object v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withAllowed(Z)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withProperties(Landroid/location/provider/ProviderProperties;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withIdentity(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->withExtraAttributionTags(Ljava/util/Set;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onFlushComplete()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v2, p0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v0, v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android:location_allow_listed_tags"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v5, v5, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " provider loaded extra attribution tags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    new-instance v5, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, v3, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;)V

    invoke-static {v4, v5}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$100(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/location/Location;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$400(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReportLocations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-static {p1}, Landroid/location/LocationResult;->wrap(Ljava/util/List;)Landroid/location/LocationResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$500(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSetAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$300(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSetProperties(Landroid/location/provider/ProviderProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$200(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/provider/ProviderProperties;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
