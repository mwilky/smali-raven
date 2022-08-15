.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;
    }
.end annotation


# instance fields
.field public mFirstAcquireTimeMs:J

.field public volatile mLastAmbientLux:F

.field public mLightSensorEnabled:Z

.field public final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/biometrics/log/BiometricLogger;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAmbientLux(Lcom/android/server/biometrics/log/BiometricLogger;F)V
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLightSensorLoggingEnabled(Lcom/android/server/biometrics/log/BiometricLogger;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/BiometricLogger;->setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricLogger$1;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6

    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v4

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/hardware/SensorManager;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method


# virtual methods
.method public createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe-IA;)V

    invoke-direct {v0, v1, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public disableMetrics()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    return-void
.end method

.method public getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStatsClient()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    return p0
.end method

.method public logOnAcquired(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_7

    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    const/4 v0, 0x7

    if-eq p3, v0, :cond_6

    :cond_5
    if-eqz v1, :cond_7

    const/16 v0, 0x14

    if-ne p3, v0, :cond_7

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    invoke-static {p1, p5}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    move-object v2, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Landroid/hardware/biometrics/common/OperationContext;IIIZIII)V

    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    if-eqz p4, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :goto_1
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_2

    :cond_3
    const-wide/16 v1, -0x1

    :goto_2
    move-wide v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move-object v5, p1

    move/from16 v10, p5

    invoke-static {p1, v10}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    iget v11, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    move-object v0, v1

    move-object v1, p2

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V

    return-void
.end method

.method public logOnEnrolled(IJZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

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

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget v9, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZF)V

    return-void
.end method

.method public logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V
    .locals 14

    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v9, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v5, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v6, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v7, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    move-object v0, p1

    move/from16 v1, p5

    invoke-static {p1, v1}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v8

    move-object/from16 v4, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V

    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    return-void
.end method

.method public final setLightSensorLoggingEnabled(Landroid/hardware/Sensor;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorEnabled:Z

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLastAmbientLux:F

    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldSkipLogging()Z
    .locals 3

    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "BiometricLogger"

    if-nez v0, :cond_2

    const-string v0, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_3

    const-string v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez p0, :cond_4

    const-string p0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method
