.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    check-cast p1, Lcom/android/server/location/geofence/GeofenceKey;

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->$r8$lambda$9hP-7lzvfc8NNDyiNwAe4h97ysY(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceKey;)Z

    move-result p0

    return p0
.end method
