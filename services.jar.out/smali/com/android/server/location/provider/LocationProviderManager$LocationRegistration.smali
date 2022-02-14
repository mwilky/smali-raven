.class public abstract Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "LocationProviderManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationManagerInternal$ProviderEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "LocationRegistration"
.end annotation


# instance fields
.field private mExpirationRealtimeMs:J

.field private mNumLocationsDelivered:I

.field private volatile mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TTransport::",
            "Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;",
            ":",
            "Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;",
            ">(",
            "Landroid/location/LocationRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TTTransport;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    move-object v0, p4

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    iget-object v0, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "*location*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    invoke-direct {v1, p3, v0}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V

    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return v0
.end method

.method static synthetic access$104(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    return v0
.end method


# virtual methods
.method acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 8
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

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v0, v0, v2

    const-string v1, " provider registration "

    const-string v2, "LocationManagerService"

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " expired at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->remove()V

    return-object v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getPermissionLevel()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationResult;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-virtual {v0, v4}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v3

    :cond_3
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getPermissionLevel()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v6, v6, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " noteOp denied"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v3

    :cond_5
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;

    invoke-direct {v1, p0, v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;)V

    return-object v1
.end method

.method public synthetic lambda$onProviderEnabledChanged$0$LocationProviderManager$LocationRegistration()Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-object v0
.end method

.method public synthetic lambda$onProviderEnabledChanged$1$LocationProviderManager$LocationRegistration(ZLcom/android/server/location/provider/LocationProviderManager$ProviderTransport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;->deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public onAlarm()V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->remove()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onListenerUnregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    return-void
.end method

.method protected onLocationListenerRegister()V
    .locals 0

    return-void
.end method

.method protected onLocationListenerUnregister()V
    .locals 0

    return-void
.end method

.method public onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method protected final onProviderListenerActive()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const-wide/32 v1, 0x45c18f6

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 v3, 0x7530

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getPermissionLevel()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v6

    move-wide v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/location/Location;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_1
    return-void
.end method

.method protected final onProviderListenerRegister()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onAlarm()V

    goto :goto_0

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    iget-wide v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    sub-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v2, p0}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onLocationListenerRegister()V

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method protected final onProviderListenerUnregister()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onLocationListenerUnregister()V

    return-void
.end method

.method protected abstract onProviderOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
