.class public Lcom/google/android/systemui/columbus/sensors/EventIMURT;
.super Ljava/lang/Object;
.source "EventIMURT.java"


# instance fields
.field public mAccXs:Ljava/util/ArrayDeque;

.field public mAccYs:Ljava/util/ArrayDeque;

.field public mAccZs:Ljava/util/ArrayDeque;

.field public mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

.field public mFeatureVector:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mGotAcc:Z

.field public mGotGyro:Z

.field public mGyroXs:Ljava/util/ArrayDeque;

.field public mGyroYs:Ljava/util/ArrayDeque;

.field public mGyroZs:Ljava/util/ArrayDeque;

.field public mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

.field public mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

.field public mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

.field public mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

.field public mNumberFeature:I

.field public mResampleAcc:Lcom/google/android/systemui/columbus/sensors/Resample3C;

.field public mResampleGyro:Lcom/google/android/systemui/columbus/sensors/Resample3C;

.field public mSizeFeatureWindow:I

.field public mSizeWindowNs:J

.field public mSlopeAcc:Lcom/google/android/systemui/columbus/sensors/Slope3C;

.field public mSlopeGyro:Lcom/google/android/systemui/columbus/sensors/Slope3C;

.field public mSyncTime:J


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

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/ArrayDeque;

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
