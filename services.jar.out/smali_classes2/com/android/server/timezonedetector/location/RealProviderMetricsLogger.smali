.class public Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;
.super Ljava/lang/Object;
.source "RealProviderMetricsLogger.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;


# instance fields
.field private final mProviderIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->mProviderIndex:I

    return-void
.end method

.method private static metricsProviderState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onProviderStateChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->mProviderIndex:I

    invoke-static {p1}, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->metricsProviderState(I)I

    move-result v1

    const/16 v2, 0x167

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
