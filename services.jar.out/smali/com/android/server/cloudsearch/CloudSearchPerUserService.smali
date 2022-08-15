.class public Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "CloudSearchPerUserService.java"

# interfaces
.implements Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
        "Lcom/android/server/cloudsearch/CloudSearchManagerService;",
        ">;",
        "Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallbackQueue:Lcom/android/server/CircularQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/CircularQueue<",
            "Ljava/lang/String;",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteComponentName:Landroid/content/ComponentName;

.field public mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceName:Ljava/lang/String;

.field public mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$02G19LWLeZSN7LZu7AiJ0x1P5ew(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fx8QmpEVW4RxqjoTu0AUndonndc(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$1(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p1, Lcom/android/server/CircularQueue;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/android/server/CircularQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/cloudsearch/ICloudSearchService;->onSearch(Landroid/app/cloudsearch/SearchRequest;)V

    return-void
.end method

.method private synthetic lambda$onSearchLocked$1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->reconnect()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameForMultipleLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v8, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.cloudsearch.CloudSearchService"

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;ZZ)V

    iput-object v8, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    :cond_2
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    return-object p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConnectedStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroyLocked(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/CircularQueue;->removeElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    :cond_1
    return-void
.end method

.method public onPackageRestartedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onReturnResultsLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/cloudsearch/ICloudSearchService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/service/cloudsearch/ICloudSearchService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p1, p2}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/app/cloudsearch/SearchResponse;->setSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p1, p2}, Lcom/android/server/CircularQueue;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    :try_start_0
    invoke-virtual {p3}, Landroid/app/cloudsearch/SearchResponse;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p3, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p3, :cond_3

    sget-object p3, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Exception in posting results"

    invoke-static {p3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v3

    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_4

    aget-object v5, v0, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v3, v4

    :cond_4
    if-nez v3, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/SearchRequest;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0, v7}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    invoke-interface {p2}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v7}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V

    move-object v1, v0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;-><init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {p0, v7, v0}, Lcom/android/server/CircularQueue;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V

    return-void
.end method

.method public resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/cloudsearch/SearchRequest;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/cloudsearch/ICloudSearchService;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resurrectSessionsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requests."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0}, Lcom/android/server/CircularQueue;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    iget-object v2, v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLocked(Z)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    :cond_1
    :goto_0
    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    :cond_0
    return-void
.end method
