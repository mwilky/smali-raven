.class public final Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;
.super Ljava/lang/Object;
.source "GestureSensorImpl.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GestureSensorEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    iget-object v2, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v12, v4, v5

    const/4 v13, 0x1

    aget v14, v4, v13

    const/4 v15, 0x2

    aget v4, v4, v15

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->samplingIntervalNs:J

    const/4 v8, 0x6

    iput v8, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    const v16, 0x4a127c00    # 2400000.0f

    const-wide/16 v8, 0x0

    const/4 v15, 0x4

    if-ne v3, v13, :cond_2

    iput-boolean v13, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    move/from16 v17, v14

    iget-wide v13, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v13, v8, v13

    if-nez v13, :cond_1

    iget-object v13, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iput v12, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastX:F

    iput-wide v10, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastT:J

    iput v12, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisX:F

    iput-wide v10, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    iput-wide v6, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    move/from16 v14, v17

    iput v14, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastY:F

    iput v4, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastZ:F

    iput v14, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisY:F

    iput v4, v13, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisZ:F

    goto :goto_0

    :cond_1
    move/from16 v14, v17

    :goto_0
    iget-boolean v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    if-nez v6, :cond_4

    move v7, v5

    goto/16 :goto_d

    :cond_2
    if-ne v3, v15, :cond_4

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    move-wide/from16 v17, v6

    iget-wide v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v5, v8, v5

    if-nez v5, :cond_3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iput v12, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastX:F

    iput-wide v10, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastT:J

    iput v12, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisX:F

    iput-wide v10, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    move-wide/from16 v6, v17

    iput-wide v6, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    iput v14, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastY:F

    iput v4, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mRawLastZ:F

    iput v14, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisY:F

    iput v4, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledThisZ:F

    :cond_3
    iget-boolean v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-wide v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    cmp-long v5, v8, v5

    if-nez v5, :cond_6

    iput-wide v10, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iput-wide v10, v3, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    iget-object v4, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iput-wide v10, v4, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mResampledLastT:J

    iget-object v4, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v5, v4, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    iput v6, v5, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v5, v4, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    iput v6, v5, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v4, v4, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v3, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    iput v3, v4, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    iget-object v4, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v5, v3, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v6, v4, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    iput v6, v5, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v5, v3, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v6, v4, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    iput v6, v5, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/sensors/Slope1C;

    iget v4, v4, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    iput v4, v3, Lcom/google/android/systemui/columbus/sensors/Slope1C;->mRawLastX:F

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/sensors/Lowpass1C;

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    iget-object v4, v3, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v4, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    iget-object v2, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v3, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    iget-object v2, v2, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/sensors/Highpass1C;

    iput v5, v2, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    iput v5, v2, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    :cond_5
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_6
    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    :goto_2
    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move v7, v12

    move v8, v14

    move v9, v4

    move-wide/from16 v17, v10

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->update(FFFJ)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v5, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    long-to-float v5, v5

    div-float v5, v16, v5

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v5, v3}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v5, v3}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/ArrayDeque;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    iget v3, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v5, v3, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    iget-wide v7, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    div-long/2addr v7, v5

    long-to-int v3, v7

    :goto_3
    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v3, :cond_7

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v6}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mT:J

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    neg-float v5, v5

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v6}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mT:J

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->update(FJ)V

    move-wide/from16 v10, v17

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v17, v10

    if-ne v3, v15, :cond_5

    :cond_9
    :goto_4
    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    move v7, v12

    move v8, v14

    move v9, v4

    move-wide/from16 v10, v17

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->update(FFFJ)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/sensors/Point3f;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v5, v5, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    long-to-float v5, v5

    div-float v5, v16, v5

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/systemui/columbus/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;F)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v5, v3}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v5, v3}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/sensors/Point3f;)Lcom/google/android/systemui/columbus/sensors/Point3f;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/ArrayDeque;

    iget v6, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/ArrayDeque;

    iget v3, v3, Lcom/google/android/systemui/columbus/sensors/Point3f;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v5, v3, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    iget-wide v7, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    div-long/2addr v7, v5

    long-to-int v3, v7

    :goto_5
    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v3, :cond_a

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_5

    :cond_a
    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    iget-wide v5, v3, Lcom/google/android/systemui/columbus/sensors/Resample3C;->mInterval:J

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mT:J

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/sensors/Sample3C;

    move-result-object v3

    iget-wide v9, v3, Lcom/google/android/systemui/columbus/sensors/Sample3C;->mT:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v5

    long-to-int v3, v7

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v5, v5, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v7, v7, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mPeakId:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v6, v6, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    iget-object v8, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    iget v8, v8, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mAmplitude:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_b

    goto :goto_6

    :cond_b
    move v5, v7

    :goto_6
    const/16 v6, 0xc

    if-le v5, v6, :cond_c

    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    :cond_c
    add-int/lit8 v7, v5, -0x6

    sub-int v3, v7, v3

    iget-object v8, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    if-ltz v7, :cond_14

    if-ltz v3, :cond_14

    iget v9, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    add-int v10, v7, v9

    if-gt v10, v8, :cond_14

    add-int/2addr v9, v3

    if-le v9, v8, :cond_d

    goto/16 :goto_c

    :cond_d
    iget-boolean v8, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    if-eqz v8, :cond_14

    if-gt v5, v6, :cond_14

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v6, v7, v5}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/ArrayDeque;

    iget v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    invoke-virtual {v2, v5, v7, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    iget v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    invoke-virtual {v2, v5, v7, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    iget v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    const/4 v7, 0x3

    mul-int/2addr v6, v7

    invoke-virtual {v2, v5, v3, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/ArrayDeque;

    iget v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/2addr v6, v15

    invoke-virtual {v2, v5, v3, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/ArrayDeque;

    iget v6, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    mul-int/lit8 v6, v6, 0x5

    invoke-virtual {v2, v5, v3, v6}, Lcom/google/android/systemui/columbus/sensors/TapRT;->addToFeatureVector(Ljava/util/ArrayDeque;II)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/16 v6, 0x64

    const/16 v8, 0x96

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    iput-object v3, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    const-class v6, F

    iget-object v8, v5, Lcom/google/android/systemui/columbus/sensors/TfClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    if-nez v8, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v15, [I

    const/4 v10, 0x1

    aput v10, v9, v7

    const/4 v7, 0x2

    aput v10, v9, v7

    aput v8, v9, v10

    const/4 v7, 0x0

    aput v10, v9, v7

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[[F

    move v9, v7

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aget-object v11, v8, v7

    aget-object v11, v11, v9

    aget-object v11, v11, v7

    aput v10, v11, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v8, v3, v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x2

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/google/android/systemui/columbus/sensors/TfClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v5, v3, v8}, Lorg/tensorflow/lite/InterpreterImpl;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/HashMap;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x7

    move v9, v7

    :goto_9
    if-ge v9, v8, :cond_11

    aget-object v10, v3, v7

    aget v10, v10, v9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const v5, -0x800001

    move v6, v7

    move v8, v6

    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_13

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_12

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v8, v6

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_13
    iput v8, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    goto/16 :goto_4

    :cond_14
    :goto_c
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v7, 0x0

    iget v3, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mResult:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    iget-object v2, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_16
    :goto_d
    iget-object v2, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-wide v3, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v0, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/32 v8, 0x1dcd6500

    cmp-long v5, v5, v8

    if-lez v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_18
    iget-object v0, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    move v5, v7

    const/4 v0, 0x1

    goto :goto_f

    :cond_19
    iget-object v0, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5f5e100

    cmp-long v3, v3, v5

    if-lez v3, :cond_1a

    iget-object v0, v2, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    const/4 v5, 0x2

    goto :goto_f

    :cond_1b
    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_f
    if-eq v5, v0, :cond_1d

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1c

    goto :goto_10

    :cond_1c
    iget-object v0, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :cond_1d
    iget-object v0, v1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_10
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data
.end method

.method public final setListening(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isListening:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isListening:Z

    :goto_0
    return-void
.end method
