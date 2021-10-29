.class public abstract Lcom/android/server/biometrics/sensors/LoggableMonitor;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;,
        Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;,
        Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Biometrics/LoggableMonitor"


# instance fields
.field private mFirstAcquireTimeMs:J

.field private volatile mLastAmbientLux:F

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldLogMetrics:Z

.field private final mStatsAction:I

.field private final mStatsClient:I

.field final mStatsModality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    new-instance v0, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iput p2, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    iput p4, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/LoggableMonitor;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/biometrics/sensors/LoggableMonitor;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    return p1
.end method

.method private sanitizeLatency(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found a negative latency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/LoggableMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method private setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorEnabled:Z

    iput v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldSkipLogging()Z
    .locals 3

    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Biometrics/LoggableMonitor"

    if-nez v0, :cond_2

    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    if-nez v0, :cond_3

    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    if-nez v0, :cond_4

    const-string v0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method


# virtual methods
.method protected createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe<",
            "Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    new-instance v1, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;Lcom/android/server/biometrics/sensors/LoggableMonitor$1;)V

    invoke-direct {v0, v1, p1}, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;Z)V

    return-object v0
.end method

.method protected getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStatsClient()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    return v0
.end method

.method protected isCryptoOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final logOnAcquired(Landroid/content/Context;III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v11, p2

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v12, v2

    if-ne v1, v4, :cond_2

    move v3, v4

    :cond_2
    move v13, v3

    if-nez v12, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    if-nez v11, :cond_7

    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v13, :cond_5

    const/4 v1, 0x7

    if-eq v11, v1, :cond_6

    :cond_5
    if-eqz v12, :cond_7

    const/16 v1, 0x14

    if-ne v11, v1, :cond_7

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    const/16 v1, 0x57

    iget v2, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v4

    iget v5, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    iget v6, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    const/4 v10, -0x1

    move/from16 v3, p4

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZI)V

    return-void
.end method

.method protected final logOnAuthenticated(Landroid/content/Context;ZZIZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    iget-wide v2, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_3
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v14, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Biometrics/LoggableMonitor"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const/16 v2, 0x58

    iget v3, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    iget v6, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    invoke-direct {v0, v14, v15}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v9

    move-object/from16 v13, p1

    move/from16 v12, p4

    invoke-static {v13, v12}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v11

    const/16 v16, -0x1

    iget v8, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    move/from16 v4, p4

    move/from16 v7, p3

    move/from16 v17, v8

    move v8, v1

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-static/range {v2 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIF)V

    return-void
.end method

.method protected final logOnEnrolled(IJZ)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/LoggableMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xb8

    iget v2, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v4

    const/4 v7, -0x1

    iget v8, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mLastAmbientLux:F

    move v3, p1

    move v6, p4

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIF)V

    return-void
.end method

.method protected final logOnError(Landroid/content/Context;III)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Biometrics/LoggableMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->shouldSkipLogging()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/16 v4, 0x59

    iget v5, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsModality:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->isCryptoOperation()Z

    move-result v7

    iget v8, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsAction:I

    iget v9, v0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mStatsClient:I

    move-object/from16 v3, p1

    move/from16 v15, p4

    invoke-static {v3, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v13

    const/16 v16, -0x1

    move/from16 v6, p4

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v15, v16

    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJI)V

    return-void
.end method

.method protected setShouldLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor;->mShouldLogMetrics:Z

    return-void
.end method
