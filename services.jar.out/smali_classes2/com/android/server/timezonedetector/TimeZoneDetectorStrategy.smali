.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# virtual methods
.method public abstract enableTelephonyTimeZoneFallback()V
.end method

.method public abstract generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.end method

.method public abstract isGeoTimeZoneDetectionSupported()Z
.end method

.method public abstract isTelephonyTimeZoneDetectionSupported()Z
.end method

.method public abstract suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
.end method

.method public abstract suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
.end method

.method public abstract suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
.end method
