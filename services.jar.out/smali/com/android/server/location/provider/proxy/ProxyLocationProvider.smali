.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/provider/AbstractLocationProvider;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_LOCATION_TAGS:Ljava/lang/String; = "android:location_allow_listed_tags"

.field private static final LOCATION_TAGS_SEPARATOR:Ljava/lang/String; = ";"

.field private static final RESET_DELAY_MS:J = 0x3e8L


# instance fields
.field mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

.field final mContext:Landroid/content/Context;

.field final mFlushListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

.field private volatile mRequest:Landroid/location/provider/ProviderRequest;

.field mResetter:Ljava/lang/Runnable;

.field final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/provider/ProviderProperties;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->setProperties(Landroid/location/provider/ProviderProperties;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->setAllowed(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method private checkServiceResolves()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
    .locals 7

    new-instance v6, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->checkServiceResolves()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$onExtraCommand$1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/location/provider/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onSetRequest$0(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0, p2}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    invoke-direct {v2, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-interface {v0, v2}, Landroid/location/provider/ILocationProvider;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    sget-object v3, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v2, v3}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p4}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method protected onFlush(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method protected onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/provider/ProviderRequest;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->unregister()V

    return-void
.end method

.method public onUnbind()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
