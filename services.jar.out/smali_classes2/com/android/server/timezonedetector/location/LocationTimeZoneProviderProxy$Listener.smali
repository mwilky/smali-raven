.class public interface abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onProviderBound()V
.end method

.method public abstract onProviderUnbound()V
.end method

.method public abstract onReportTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
.end method
