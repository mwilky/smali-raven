.class public Lcom/google/android/systemui/columbus/sensors/TapRT;
.super Lcom/google/android/systemui/columbus/sensors/EventIMURT;
.source "TapRT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;
    }
.end annotation


# instance fields
.field private final mFrameAlignPeak:I

.field private final mFramePriorPeak:I

.field private final mMaxTimeGapNs:J

.field private final mMinTimeGapNs:J

.field private mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

.field private mResult:I

.field private mTimestampsBackTap:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseEnhancedHeuristic:Z

.field private mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

.field private mWasPeakApproaching:Z


# direct methods
.method public constructor <init>(JLandroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;-><init>()V

    const-wide/32 v0, 0x5f5e100

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mMinTimeGapNs:J

    const-wide/32 v0, 0x1dcd6500

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mMaxTimeGapNs:J

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mFrameAlignPeak:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mFramePriorPeak:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mUseEnhancedHeuristic:Z

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    invoke-direct {p0, p4}, Lcom/google/android/systemui/columbus/sensors/TapRT;->getModelFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRT loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Columbus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    invoke-direct {v1, p3, p4}, Lcom/google/android/systemui/columbus/sensors/TfClassifier;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    const/16 p1, 0x32

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara(F)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara(F)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    const p2, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara(F)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara(F)V

    return-void
.end method

.method private addToFeatureVector(Ljava/util/Deque;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ge v0, p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getModelFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "Pixel 4 XL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p0, "Pixel 3 XL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p0, "Pixel 5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p0, "Pixel 4a (5G)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "tap7cls_flame.tflite"

    return-object p0

    :pswitch_0
    const-string p0, "tap7cls_coral.tflite"

    return-object p0

    :pswitch_1
    const-string p0, "tap7cls_crosshatch.tflite"

    return-object p0

    :pswitch_2
    const-string p0, "tap7cls_redfin.tflite"

    return-object p0

    :pswitch_3
    const-string p0, "tap7cls_bramble.tflite"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33df3b98 -> :sswitch_3
        0x41e9e4fb -> :sswitch_2
        0x718d4f7b -> :sswitch_1
        0x718dc3da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkDoubleTapTiming(J)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x1dcd6500

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5f5e100

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->clear()V

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public checkPeakNumber(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkTapEnergy(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public getPeakDetector()Lcom/google/android/systemui/columbus/sensors/PeakDetector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    return-object p0
.end method

.method public getValleyDetection()Lcom/google/android/systemui/columbus/sensors/PeakDetector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    return-object p0
.end method

.method public processKeySignalHeuristic()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getPoint()Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->getInterval()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4a127c00    # 2400000.0f

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    iget-object v3, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    iget v0, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->getInterval()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->recognizeTapHeuristic()V

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    sget-object v1, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Back:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public recognizeTapHeuristic()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getPeakId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getPeakId()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    if-lez v1, :cond_0

    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Back:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Others:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    :cond_1
    :goto_0
    return-void
.end method

.method public recognizeTapML()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->getInterval()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getPeakId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getPeakId()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getAmplitude()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getAmplitude()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v3, 0xc

    if-le v1, v3, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    :cond_1
    add-int/lit8 v4, v1, -0x6

    sub-int v0, v4, v0

    iget-object v5, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    if-ltz v4, :cond_6

    if-ltz v0, :cond_6

    iget v6, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    add-int v7, v4, v6

    if-gt v7, v5, :cond_6

    add-int/2addr v6, v0

    if-le v6, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    if-eqz v5, :cond_6

    if-gt v1, v3, :cond_6

    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getNumberPeaks()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/android/systemui/columbus/sensors/TapRT;->checkPeakNumber(II)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->getNumberPeaks()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/google/android/systemui/columbus/sensors/TapRT;->checkPeakNumber(II)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    invoke-direct {p0, v1, v4, v2}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/Deque;

    iget v5, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    iget v5, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    iget v4, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/Deque;

    iget v4, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/2addr v4, v3

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/Deque;

    iget v3, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/16 v3, 0x64

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->checkTapEnergy(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->resetFv()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->scaleGyroData(Ljava/util/ArrayList;F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v3}, Lcom/google/android/systemui/columbus/sensors/TfClassifier;->predict(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/Util;->getMaxId(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    :cond_6
    :goto_1
    return-void
.end method

.method public reset(Z)V
    .locals 0

    invoke-super {p0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->reset()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->resetFv()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-void
.end method

.method public resetFv()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateData(IFFFJJZ)V
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Others:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    if-eqz p9, :cond_0

    invoke-virtual/range {p0 .. p8}, Lcom/google/android/systemui/columbus/sensors/TapRT;->updateHeuristic(IFFFJJ)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/google/android/systemui/columbus/sensors/TapRT;->updateML(IFFFJJ)V

    :goto_0
    return-void
.end method

.method public updateHeuristic(IFFFJJ)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x4

    move v2, p1

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    iget-wide v3, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v1, v1, v3

    move-wide v8, p5

    if-nez v1, :cond_1

    iput-wide v8, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->init(FFFJJ)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->setSyncTime(J)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getPoint()Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->update(FFFJ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->processKeySignalHeuristic()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateML(IFFFJJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v10, p5

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_1

    iput-boolean v15, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    iget-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->init(FFFJJ)V

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    if-nez v2, :cond_3

    return-void

    :cond_1
    if-ne v1, v12, :cond_3

    iput-boolean v15, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    iget-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->init(FFFJJ)V

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_4

    iput-wide v10, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v1, v10, v11}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->setSyncTime(J)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->setSyncTime(J)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getPoint()Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getPoint()Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/Point3f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/Point3f;

    invoke-direct {v2, v3, v3, v3}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/Point3f;

    invoke-direct {v2, v3, v3, v3}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/Point3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/google/android/systemui/columbus/sensors/Point3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->init(Lcom/google/android/systemui/columbus/sensors/Point3f;)V

    return-void

    :cond_4
    if-ne v1, v15, :cond_5

    :goto_0
    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->update(FFFJ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->processAcc()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    neg-float v2, v2

    iget-object v3, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getT()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_7

    :goto_1
    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->update(FFFJ)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->processGyro()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->recognizeTapML()V

    goto :goto_1

    :cond_6
    iget v1, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    sget-object v2, Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;->Back:Lcom/google/android/systemui/columbus/sensors/TapRT$TapClass;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
