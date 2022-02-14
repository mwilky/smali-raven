.class public Lcom/android/server/appprediction/AppPredictionPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AppPredictionPerUserService.java"

# interfaces
.implements Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        ">;",
        "Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final PREDICT_USING_PEOPLE_SERVICE_PREFIX:Ljava/lang/String; = "predict_using_people_service_"

.field private static final REMOTE_APP_PREDICTOR_KEY:Ljava/lang/String; = "remote_app_predictor"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->reconnect()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;
    .locals 11

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v1, v1, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v10, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v9, v2, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    const-string v4, "android.service.appprediction.AppPredictionService"

    move-object v2, v10

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/appprediction/RemoteAppPredictionService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    return-object v0
.end method

.method static synthetic lambda$notifyAppTargetEventLocked$2(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShownLocked$3(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic lambda$onCreatePredictionSessionLocked$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSessionLocked$8(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdatesLocked$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdateLocked$7(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/service/appprediction/IPredictionService;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$sortAppTargetsLocked$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Landroid/service/appprediction/IPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdatesLocked$6(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/service/appprediction/IPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method private resurrectSessionsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    iget-object v3, v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreatePredictionSessionLocked$1$AppPredictionPerUserService(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda8;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resurrect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resurrectSessionsLocked()V

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "predict_using_people_service_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "remote_app_predictor"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "dark_launch_remote_prediction_service_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v8, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    new-instance v6, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move v4, v0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {v1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->linkToDeath()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyPredictionSessionLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailureOrTimeout(): timed out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method onPackageRestartedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method onPackageUpdatedLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V

    return-void
.end method

.method public registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    :cond_1
    return-void
.end method

.method public requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method protected resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "ZZ",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/appprediction/IPredictionService;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const-class v2, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/appprediction/IPredictionService;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p4, v2}, Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;->run(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v2, p4}, Lcom/android/server/appprediction/RemoteAppPredictionService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p4}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0
.end method

.method public sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda7;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z

    move-result v2

    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(Landroid/app/prediction/AppPredictionSessionId;ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    :cond_1
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    :cond_0
    return v0
.end method
