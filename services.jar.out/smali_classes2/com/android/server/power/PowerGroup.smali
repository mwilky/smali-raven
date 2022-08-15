.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerGroup$PowerGroupListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerGroup"


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastPowerOnTime:J

.field public mLastSleepTime:J

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mSupportsSandman:Z

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput p5, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iput-boolean p6, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    iput-boolean p7, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method


# virtual methods
.method public dozeLocked(JII)Z
    .locals 13

    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v10, 0x20000

    const-string v1, "powerOffDisplay"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v1, 0xd

    move/from16 v3, p4

    :try_start_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Powering off display group due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v2, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    return v2
.end method

.method public dreamLocked(JI)Z
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v10, 0x1

    if-eq v1, v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dreamPowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v11, 0x20000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Napping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return v10

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredScreenPolicyLocked(ZZZZZ)I
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    return v2

    :cond_2
    if-eqz p3, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p2, 0x2

    and-int/lit8 p3, v1, 0x2

    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p0

    and-int/2addr p0, p1

    if-nez p0, :cond_5

    if-eqz p5, :cond_4

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v2
.end method

.method public getGroupId()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return p0
.end method

.method public getLastPowerOnTimeLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method public getLastSleepTimeLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method public getLastWakeTimeLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method public getUserActivitySummaryLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return p0
.end method

.method public getWakeLockSummaryLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return p0
.end method

.method public getWakefulnessLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return p0
.end method

.method public isBrightOrDimLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p0

    return p0
.end method

.method public isPolicyBrightLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPolicyDimLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPolicyVrLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result p0

    return p0
.end method

.method public isPoweringOnLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return p0
.end method

.method public isReadyLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return p0
.end method

.method public isSandmanSummonedLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return p0
.end method

.method public needSuspendBlockerLocked(ZZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v1, :cond_2

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setIsPoweringOnLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return-void
.end method

.method public setLastPowerOnTimeLocked(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-void
.end method

.method public setLastUserActivityTimeLocked(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-void
.end method

.method public setReadyLocked(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSandmanSummonedLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return-void
.end method

.method public setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v1, v2, :cond_2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    iput-wide v3, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput-wide v3, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    :cond_1
    :goto_0
    iput v2, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iget-object v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v5, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move-object v0, v1

    move v1, v5

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p5

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public sleepLocked(JII)Z
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v10, 0x20000

    const-string v1, "sleepPowerGroup"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSandmanLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return p0
.end method

.method public updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZ)Z
    .locals 9

    move-object v6, p0

    move-object/from16 v7, p8

    iget-object v8, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZ)I

    move-result v0

    iput v0, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v1, p1

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    move v1, p2

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move v1, p3

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move v1, p4

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, p5

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    :cond_0
    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    :cond_1
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v1, p6

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    :goto_0
    iget-object v0, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget v1, v7, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iget-object v1, v6, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v6, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v3, p14

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    iget-object v1, v6, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, v6, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v3, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    return v0
.end method

.method public wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .locals 12

    move-object v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakePowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up power group from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", details="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Screen turning on"

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v10, v11, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v1, 0x5

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p8

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-wide v3, p1

    move/from16 v5, p5

    move v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
