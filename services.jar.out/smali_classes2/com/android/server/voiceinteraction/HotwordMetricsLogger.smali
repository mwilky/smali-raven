.class public final Lcom/android/server/voiceinteraction/HotwordMetricsLogger;
.super Ljava/lang/Object;
.source "HotwordMetricsLogger.java"


# static fields
.field private static final METRICS_INIT_DETECTOR_DSP:I = 0x1

.field private static final METRICS_INIT_DETECTOR_SOFTWARE:I = 0x2

.field private static final METRICS_INIT_NORMAL_DETECTOR:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCreateMetricsDetectorType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDetectorMetricsDetectorType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getInitMetricsDetectorType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getKeyphraseMetricsDetectorType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRestartMetricsDetectorType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeDetectorCreateEvent(IZI)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getCreateMetricsDetectorType(I)I

    move-result v0

    const/16 v1, 0x1ae

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZI)V

    return-void
.end method

.method public static writeDetectorEvent(III)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getDetectorMetricsDetectorType(I)I

    move-result v0

    const/16 v1, 0x1b2

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static writeKeyphraseTriggerEvent(II)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getKeyphraseMetricsDetectorType(I)I

    move-result v0

    const/16 v1, 0x1b1

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public static writeServiceInitResultEvent(II)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getInitMetricsDetectorType(I)I

    move-result v0

    const/16 v1, 0x1af

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public static writeServiceRestartEvent(II)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getRestartMetricsDetectorType(I)I

    move-result v0

    const/16 v1, 0x1b0

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
