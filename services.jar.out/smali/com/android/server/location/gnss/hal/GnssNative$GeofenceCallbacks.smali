.class public interface abstract Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeofenceCallbacks"
.end annotation


# virtual methods
.method public abstract onReportGeofenceAddStatus(II)V
.end method

.method public abstract onReportGeofencePauseStatus(II)V
.end method

.method public abstract onReportGeofenceRemoveStatus(II)V
.end method

.method public abstract onReportGeofenceResumeStatus(II)V
.end method

.method public abstract onReportGeofenceStatus(ILandroid/location/Location;)V
.end method

.method public abstract onReportGeofenceTransition(ILandroid/location/Location;IJ)V
.end method
