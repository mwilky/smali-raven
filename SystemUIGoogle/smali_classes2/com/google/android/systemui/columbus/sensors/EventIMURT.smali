.class public Lcom/google/android/systemui/columbus/sensors/EventIMURT;
.super Ljava/lang/Object;
.source "EventIMURT.java"


# instance fields
.field protected mAccXs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccYs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccZs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

.field protected mFeatureVector:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mGotAcc:Z

.field protected mGotGyro:Z

.field protected mGyroXs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mGyroYs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mGyroZs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

.field protected mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

.field protected mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

.field protected mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

.field protected mNumberFeature:I

.field protected mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

.field protected mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

.field protected mSizeFeatureWindow:I

.field protected mSizeWindowNs:J

.field protected mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

.field protected mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

.field protected mSyncTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Slope3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Slope3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    return-void
.end method


# virtual methods
.method public getHighpassAcc()Lcom/google/android/systemui/columbus/sensors/Highpass3C;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    return-object p0
.end method

.method public getHighpassGyro()Lcom/google/android/systemui/columbus/sensors/Highpass3C;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    return-object p0
.end method

.method public getLowpassAcc()Lcom/google/android/systemui/columbus/sensors/Lowpass3C;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    return-object p0
.end method

.method public getLowpassGyro()Lcom/google/android/systemui/columbus/sensors/Lowpass3C;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    return-object p0
.end method

.method public processAcc()V
    .locals 4

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

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/Deque;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processGyro()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Sample3C;->getPoint()Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->getInterval()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4a127c00    # 2400000.0f

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/Deque;

    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/Deque;

    iget v0, v0, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Resample1C;->getInterval()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    return-void
.end method

.method public scaleGyroData(Ljava/util/ArrayList;F)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
