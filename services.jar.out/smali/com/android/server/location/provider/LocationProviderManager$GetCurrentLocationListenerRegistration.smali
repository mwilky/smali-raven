.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GetCurrentLocationListenerRegistration"
.end annotation


# instance fields
.field private mExpirationRealtimeMs:J

.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    return-void
.end method


# virtual methods
.method acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationResult;",
            ")",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    cmp-long v0, v0, v2

    const-string v1, "LocationManagerService"

    if-ltz v0, :cond_2

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getPermissionLevel()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteOp denied for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/location/LocationResult;->asLastLocationResult()Landroid/location/LocationResult;

    move-result-object p1

    :cond_5
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getPermissionLevel()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V

    return-object v1
.end method

.method public binderDied()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->remove()V

    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method deliverNull()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAlarm()V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->remove()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onProviderListenerActive()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getPermissionLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v3

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/location/Location;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_0
    return-void
.end method

.method protected onProviderListenerInactive()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method protected onProviderListenerRegister()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->remove()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->onAlarm()V

    goto :goto_1

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    iget-wide v3, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    sub-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected onProviderListenerUnregister()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->mExpirationRealtimeMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
