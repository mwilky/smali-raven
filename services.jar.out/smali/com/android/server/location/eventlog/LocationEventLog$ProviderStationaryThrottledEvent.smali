.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderStationaryThrottledEvent"
.end annotation


# instance fields
.field public final mRequest:Landroid/location/provider/ProviderRequest;

.field public final mStationaryThrottled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider stationary/idle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mStationaryThrottled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "throttled"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "unthrottled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
