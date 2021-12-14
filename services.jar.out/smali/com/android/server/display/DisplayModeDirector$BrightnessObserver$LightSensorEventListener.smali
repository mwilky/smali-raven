.class final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorEventListener"
.end annotation


# static fields
.field private static final INJECT_EVENTS_INTERVAL_MS:I = 0xfa


# instance fields
.field private final mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field private mLastSensorData:F

.field private mLoggingEnabled:Z

.field private mTimestamp:J

.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF[I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDifferentZone(FF[I)Z
    .locals 5

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p3, v2

    int-to-float v3, v3

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v3

    if-gtz v4, :cond_1

    :cond_0
    cmpl-float v4, p1, v3

    if-lez v4, :cond_2

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private processSensorData(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->getEstimate(J)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$2000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On sensor changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF[I)Z

    move-result v1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/display/utils/AmbientFilter;->addValue(JF)Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    if-eqz v0, :cond_5

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_6

    :cond_5
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    return-void
.end method
