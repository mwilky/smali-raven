.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.source "LocationTimeZoneProviderControllerCallbackImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-void
.end method


# virtual methods
.method public suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    const-class p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method
