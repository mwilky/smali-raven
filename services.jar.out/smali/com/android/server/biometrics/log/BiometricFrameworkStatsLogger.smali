.class public Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BiometricFrameworkStatsLogger.java"


# static fields
.field public static final sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-object v0
.end method

.method public static sessionType(B)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquired(Landroid/hardware/biometrics/common/OperationContext;IIIZIII)V
    .locals 13

    move-object v0, p1

    iget-boolean v3, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    iget v10, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v11

    iget-boolean v12, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    const/16 v0, 0x57

    const/4 v9, -0x1

    move v1, p2

    move/from16 v2, p8

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p5

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZ)V

    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V
    .locals 15

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    move-object v1, p0

    move-wide/from16 v4, p6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v7

    iget v12, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v13

    iget-boolean v14, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    const/16 v0, 0x58

    const/4 v10, -0x1

    move/from16 v1, p2

    move/from16 v2, p10

    move/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p8

    move/from16 v9, p5

    move/from16 v11, p11

    invoke-static/range {v0 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIFIIZ)V

    return-void
.end method

.method public enroll(IIIIJZF)V
    .locals 8

    move-object v0, p0

    move-wide v1, p5

    invoke-virtual {p0, p5, p6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v3

    const/16 v0, 0xb8

    const/4 v6, -0x1

    move v1, p1

    move v2, p4

    move v5, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIF)V

    return-void
.end method

.method public error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V
    .locals 15

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    move-object v1, p0

    move-wide/from16 v4, p6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v9

    iget v12, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v1, v0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sessionType(B)I

    move-result v13

    iget-boolean v14, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    const/16 v0, 0x59

    const/4 v11, -0x1

    move/from16 v1, p2

    move/from16 v2, p10

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p5

    invoke-static/range {v0 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJIIIZ)V

    return-void
.end method

.method public reportUnknownTemplateEnrolledFramework(I)V
    .locals 2

    const/16 p0, 0x94

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportUnknownTemplateEnrolledHal(I)V
    .locals 2

    const/16 p0, 0x94

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final sanitizeLatency(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found a negative latency : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricFrameworkStatsLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    return-wide p1
.end method
