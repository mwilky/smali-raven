.class final Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;
.super Ljava/lang/Object;
.source "DeviceVibrationEffectAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationEffectAdapters$EffectAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/vibrator/VibrationEffectAdapters$EffectAdapter<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSegmentAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
            "Landroid/os/VibratorInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;

    new-instance v1, Lcom/android/server/vibrator/RampToStepAdapter;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/vibrator/StepToRampAdapter;

    invoke-direct {v1}, Lcom/android/server/vibrator/StepToRampAdapter;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/vibrator/RampDownAdapter;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    invoke-direct {v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->mSegmentAdapters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/android/server/vibrator/VibrationEffectAdapters;->apply(Landroid/os/VibrationEffect;Ljava/util/List;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .locals 0

    check-cast p2, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
