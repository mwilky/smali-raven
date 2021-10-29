.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationPowerSaveModeEvent"
.end annotation


# instance fields
.field private final mLocationPowerSaveMode:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;-><init>(J)V

    iput p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    goto :goto_0

    :pswitch_1
    const-string v0, "FOREGROUND_ONLY"

    goto :goto_0

    :pswitch_2
    const-string v0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_0

    :pswitch_3
    const-string v0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_0

    :pswitch_4
    const-string v0, "NO_CHANGE"

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location power save mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
