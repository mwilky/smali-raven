.class public final synthetic Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    iput p2, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    iget v1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->$r8$lambda$6a3v3iqWFMIqo6yVvRvhvH7FO-c(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V

    return-void
.end method
