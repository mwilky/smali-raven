.class public Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;
.super Ljava/lang/Object;
.source "GestureSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/GestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectionProperties"
.end annotation


# instance fields
.field final mActionId:J

.field final mHapticConsumed:Z

.field final mHostSuspended:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHapticConsumed:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHostSuspended:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mActionId:J

    return-void
.end method


# virtual methods
.method public getActionId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mActionId:J

    return-wide v0
.end method

.method public isHapticConsumed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHapticConsumed:Z

    return p0
.end method

.method public isHostSuspended()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHostSuspended:Z

    return p0
.end method
