.class public final Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;
.super Ljava/lang/Object;
.source "GestureSensor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetectionProperties"
.end annotation


# instance fields
.field private final actionId:J

.field private final isHapticConsumed:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->isHapticConsumed:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->actionId:J

    return-void
.end method


# virtual methods
.method public final getActionId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->actionId:J

    return-wide v0
.end method

.method public final isHapticConsumed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->isHapticConsumed:Z

    return p0
.end method
