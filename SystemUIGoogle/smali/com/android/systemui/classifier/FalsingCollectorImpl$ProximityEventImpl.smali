.class Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;
.super Ljava/lang/Object;
.source "FalsingCollectorImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingCollectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximityEventImpl"
.end annotation


# instance fields
.field private mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    return-void
.end method


# virtual methods
.method public getCovered()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p0

    return p0
.end method

.method public getTimestampNs()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getTimestampNs()J

    move-result-wide v0

    return-wide v0
.end method
