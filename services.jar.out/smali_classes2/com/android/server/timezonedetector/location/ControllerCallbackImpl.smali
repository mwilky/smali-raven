.class Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
.source "ControllerCallbackImpl.java"


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-void
.end method


# virtual methods
.method suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method
