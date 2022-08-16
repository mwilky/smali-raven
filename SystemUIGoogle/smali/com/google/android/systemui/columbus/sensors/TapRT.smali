.class public final Lcom/google/android/systemui/columbus/sensors/TapRT;
.super Lcom/google/android/systemui/columbus/sensors/EventIMURT;
.source "TapRT.java"


# instance fields
.field public mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

.field public mResult:I

.field public mTimestampsBackTap:Ljava/util/ArrayDeque;

.field public mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

.field public mWasPeakApproaching:Z


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mTimestampsBackTap:Ljava/util/ArrayDeque;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mWasPeakApproaching:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "Pixel 4 XL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "Pixel 3 XL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "Pixel 5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "Pixel 4a (5G)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string/jumbo p2, "tap7cls_flame.tflite"

    goto :goto_2

    :pswitch_0
    const-string/jumbo p2, "tap7cls_coral.tflite"

    goto :goto_2

    :pswitch_1
    const-string/jumbo p2, "tap7cls_crosshatch.tflite"

    goto :goto_2

    :pswitch_2
    const-string/jumbo p2, "tap7cls_redfin.tflite"

    goto :goto_2

    :pswitch_3
    const-string/jumbo p2, "tap7cls_bramble.tflite"

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapRT loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/TfClassifier;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mClassifier:Lcom/google/android/systemui/columbus/sensors/TfClassifier;

    const-wide/32 p1, 0x927c000

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeWindowNs:J

    const/16 p1, 0x32

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSizeFeatureWindow:I

    const/16 p1, 0x12c

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara()V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara()V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara()V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara()V

    return-void

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
.method public final addToFeatureVector(Ljava/util/ArrayDeque;II)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

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
