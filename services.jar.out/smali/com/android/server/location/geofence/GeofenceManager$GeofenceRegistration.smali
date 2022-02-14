.class public final Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;
.super Lcom/android/server/location/listeners/PendingIntentListenerRegistration;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/geofence/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GeofenceRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<",
        "Landroid/location/Geofence;",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_UNKNOWN:I


# instance fields
.field private mCachedLocation:Landroid/location/Location;

.field private mCachedLocationDistanceM:F

.field private final mCenter:Landroid/location/Location;

.field private mGeofenceState:I

.field private mPermitted:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method protected constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p2}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget-object v0, p1, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeofenceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private onLocationPermissionsChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private sendIntent(Landroid/app/PendingIntent;Z)V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v3, v1, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v6, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    new-instance v3, Lcom/android/server/location/geofence/GeofenceKey;

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Geofence;

    invoke-direct {v3, p1, v4}, Lcom/android/server/location/geofence/GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    invoke-static {v2, v3, p0}, Lcom/android/server/location/geofence/GeofenceManager;->access$000(Lcom/android/server/location/geofence/GeofenceManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getDistanceToBoundary(Landroid/location/Location;)D
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->getRadius()F

    move-result v0

    iget v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected getOwner()Lcom/android/server/location/geofence/GeofenceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    return-object v0
.end method

.method protected bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getOwner()Lcom/android/server/location/geofence/GeofenceManager;

    move-result-object v0

    return-object v0
.end method

.method isPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return v0
.end method

.method public synthetic lambda$onLocationChanged$0$GeofenceManager$GeofenceRegistration(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public synthetic lambda$onLocationChanged$1$GeofenceManager$GeofenceRegistration(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public synthetic lambda$sendIntent$2$GeofenceManager$GeofenceRegistration(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method protected onActive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_0
    return-void
.end method

.method onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->remove()V

    return-object v1

    :cond_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    iget v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->getRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    cmpg-float v3, v3, v2

    const/4 v4, 0x1

    if-gtz v3, :cond_1

    iput v4, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-eq v0, v4, :cond_2

    new-instance v1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object v1

    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-ne v0, v4, :cond_2

    new-instance v1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object v1

    :cond_2
    return-object v1
.end method

.method onLocationPermissionsChanged(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onLocationPermissionsChanged(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result v0

    return v0
.end method

.method protected onPendingIntentListenerRegister()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iget-boolean v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "na"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
