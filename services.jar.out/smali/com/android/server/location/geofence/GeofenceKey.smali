.class final Lcom/android/server/location/geofence/GeofenceKey;
.super Ljava/lang/Object;
.source "GeofenceKey.java"

# interfaces
.implements Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;


# instance fields
.field private final mGeofence:Landroid/location/Geofence;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/location/Geofence;

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/location/geofence/GeofenceKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/location/geofence/GeofenceKey;

    iget-object v3, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    iget-object v4, v1, Lcom/android/server/location/geofence/GeofenceKey;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v3, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0
.end method
