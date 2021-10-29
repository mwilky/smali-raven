.class abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderProxy.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

.field protected final mSharedLock:Ljava/lang/Object;

.field protected final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onDestroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract handleTestCommand(Lcom/android/server/timezonedetector/location/TestCommand;Landroid/os/RemoteCallback;)V
.end method

.method final handleTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->onInitialize()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "listener already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleTimeZoneProviderEvent$0$LocationTimeZoneProviderProxy(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onReportTimeZoneProviderEvent(Lcom/android/server/timezonedetector/location/TimeZoneProviderEvent;)V

    return-void
.end method

.method abstract onDestroy()V
.end method

.method abstract onInitialize()V
.end method

.method abstract setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
.end method
