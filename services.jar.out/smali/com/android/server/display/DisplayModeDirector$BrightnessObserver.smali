.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa


# instance fields
.field private mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mAmbientLux:F

.field private mBrightness:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplayState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHighAmbientBrightnessThresholds:[I

.field private mHighDisplayBrightnessThresholds:[I

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLoggingEnabled:Z

.field private mLowAmbientBrightnessThresholds:[I

.field private mLowDisplayBrightnessThresholds:[I

.field private mLowPowerModeEnabled:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInHighZone:I

.field private mRefreshRateInLowZone:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldObserveAmbientHighChange:Z

.field private mShouldObserveAmbientLowChange:Z

.field private mShouldObserveDisplayHighChange:Z

.field private mShouldObserveDisplayLowChange:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    const-string v2, ", ambientBrightnessThresholds="

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private hasValidHighZone()Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasValidLowZone()Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasValidThreshold([I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isDeviceActive()Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInsideHighZone(IF)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-lt p1, v1, :cond_2

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    return v3

    :cond_0
    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_2

    return v3

    :cond_1
    if-ltz v2, :cond_2

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isInsideLowZone(IF)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gt p1, v1, :cond_2

    int-to-float v4, v2

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    return v3

    :cond_0
    if-ltz v1, :cond_1

    if-gt p1, v1, :cond_2

    return v3

    :cond_1
    if-ltz v2, :cond_2

    int-to-float v4, v2

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private onBrightnessChangedLocked()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidLowZone()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideLowZone(IF)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    int-to-float v6, v5

    int-to-float v5, v5

    invoke-static {v6, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidHighZone()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v5, v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideHighZone(IF)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    nop

    :goto_1
    if-eqz v3, :cond_4

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    int-to-float v6, v5

    int-to-float v5, v5

    invoke-static {v6, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display brightness "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ambient lux "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", Vote "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayModeDirector"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5, v4, v0}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v5, 0x9

    invoke-static {v4, v5, v1}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method private restartObserver()V
    .locals 7

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    :goto_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    goto :goto_5

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    :cond_7
    nop

    :goto_5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    monitor-exit v0

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    :goto_6
    return-void
.end method

.method private updateDefaultDisplayState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    return-void
.end method

.method private updateSensorStatus()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    const-string v1, "DisplayModeDirector"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldObserveAmbientHighChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRefreshRateChangeable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDeviceActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0x3d090

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "updateSensorStatus: registerListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "updateSensorStatus: unregisterListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateChangeable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInLowZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mAmbientLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInHighZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayHighBrightnessThresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientHighBrightnessThresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method getLowAmbientBrightnessThresholds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method getLowDisplayBrightnessThresholds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    return-object v0
.end method

.method getRefreshRateInLowZone()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return v0
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_0

    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_1

    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    iput-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xc

    invoke-interface {v5, p0, v6, v7, v8}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public onDeviceConfigHighBrightnessThresholdsChanged([I[I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public onDeviceConfigLowBrightnessThresholdsChanged([I[I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public onDeviceConfigRefreshRateInHighZoneChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_0
    return-void
.end method

.method public onDeviceConfigRefreshRateInLowZoneChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateDefaultDisplayState()V

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_0
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .locals 4

    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v2, 0x9

    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    :cond_1
    return-void
.end method

.method public registerLightSensor(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const v2, 0x3d090

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method public setDefaultDisplayState(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_1
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->setLoggingEnabled(Z)V

    return-void
.end method
