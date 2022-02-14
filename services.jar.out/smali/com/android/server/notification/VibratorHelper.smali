.class public final Lcom/android/server/notification/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final TAG:Ljava/lang/String; = "NotificationVibratorHelper"

.field private static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private final mDefaultPattern:[J

.field private final mDefaultPwlePattern:[F

.field private final mFallbackPattern:[J

.field private final mFallbackPwlePattern:[F

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, 0x107002d

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070070

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002e

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070071

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    return-void
.end method

.method public static createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    array-length v1, p0

    if-eqz v1, :cond_4

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x2

    aget v6, p0, v6

    float-to-int v6, v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addRamp(FFI)Landroid/os/VibrationEffect$WaveformBuilder;

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/VibrationEffect$WaveformBuilder;->build(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating vibration PWLE waveform with pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationVibratorHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static createWaveformVibration([JZ)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating vibration waveform with pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationVibratorHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    array-length v1, v0

    if-le v1, p2, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    array-length v1, v0

    :goto_0
    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public cancelVibration()V
    .locals 2

    const/16 v0, -0xf

    iget-object v1, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->cancel(I)V

    return-void
.end method

.method public createDefaultVibration(Z)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public createFallbackVibration(Z)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x3e8

    const-string v2, "android"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    return-void
.end method
