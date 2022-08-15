.class public Lcom/android/server/sensorprivacy/SensorState;
.super Ljava/lang/Object;
.source "SensorState.java"


# instance fields
.field public mLastChange:J

.field public mStateType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    invoke-virtual {p1}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    return-void
.end method

.method public static enabledToState(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method public getLastChange()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-wide v0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnabled(Z)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorState;->enabledToState(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;->setState(I)Z

    move-result p0

    return p0
.end method

.method public setState(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
