.class abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Environment"
.end annotation


# instance fields
.field protected final mSharedLock:Ljava/lang/Object;

.field protected final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->mSharedLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract destroy()V
.end method

.method abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method abstract getProviderInitializationTimeout()Ljava/time/Duration;
.end method

.method abstract getProviderInitializationTimeoutFuzz()Ljava/time/Duration;
.end method

.method abstract getUncertaintyDelay()Ljava/time/Duration;
.end method
