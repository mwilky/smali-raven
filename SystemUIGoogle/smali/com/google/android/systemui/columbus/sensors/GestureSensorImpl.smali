.class public final Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;
.super Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.source "GestureSensorImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;
    }
.end annotation


# instance fields
.field public final accelerometer:Landroid/hardware/Sensor;

.field public final gyroscope:Landroid/hardware/Sensor;

.field public final handler:Landroid/os/Handler;

.field public isListening:Z

.field public final samplingIntervalNs:J

.field public final sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

.field public final sensorManager:Landroid/hardware/SensorManager;

.field public final tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->accelerometer:Landroid/hardware/Sensor;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-wide/32 v0, 0x249f00

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->samplingIntervalNs:J

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/google/android/systemui/columbus/sensors/TapRT;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isListening:Z

    return p0
.end method

.method public final startListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->setListening(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassAcc:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mLowpassGyro:Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassAcc:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mHighpassGyro:Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    const v2, 0x3cf5c28f    # 0.03f

    iput v2, v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    const/16 v2, 0x40

    iput v2, v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    const v3, 0x3c75c28f    # 0.015f

    iput v3, v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mMinNoiseTolerate:F

    iput v2, v1, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->mWindowSize:I

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccXs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccYs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mAccZs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroXs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroYs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGyroZs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotAcc:Z

    iput-boolean v1, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mGotGyro:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mSyncTime:J

    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    :goto_0
    iget v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mNumberFeature:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->mFeatureVector:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final stopListening()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->setListening(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
