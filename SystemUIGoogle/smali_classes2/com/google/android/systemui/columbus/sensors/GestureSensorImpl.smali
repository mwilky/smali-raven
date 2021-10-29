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
.field private final accelerometer:Landroid/hardware/Sensor;

.field private final deviceName:Ljava/lang/String;

.field private final gyroscope:Landroid/hardware/Sensor;

.field private final handler:Landroid/os/Handler;

.field private isListening:Z

.field private final isRunningInLowSamplingRate:Z

.field private final samplingIntervalNs:J

.field private final sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->deviceName:Ljava/lang/String;

    const-wide/32 v0, 0x249f00

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->samplingIntervalNs:J

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/TapRT;

    const-wide/32 v0, 0x927c000

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/google/android/systemui/columbus/sensors/TapRT;-><init>(JLandroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    return-void
.end method

.method public static final synthetic access$getAccelerometer$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->accelerometer:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static final synthetic access$getGyroscope$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getSamplingIntervalNs$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->samplingIntervalNs:J

    return-wide v0
.end method

.method public static final synthetic access$getSensorEventListener$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    return-object p0
.end method

.method public static final synthetic access$getSensorManager$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static final synthetic access$getTap$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/TapRT;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    return-object p0
.end method

.method public static final synthetic access$isRunningInLowSamplingRate$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isRunningInLowSamplingRate:Z

    return p0
.end method


# virtual methods
.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isListening:Z

    return p0
.end method

.method public setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->isListening:Z

    return-void
.end method

.method public startListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->setListening(ZI)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->getLowpassAcc()Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->getLowpassGyro()Lcom/google/android/systemui/columbus/sensors/Lowpass3C;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Lowpass3C;->setPara(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->getHighpassAcc()Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    move-result-object v0

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/EventIMURT;->getHighpassGyro()Lcom/google/android/systemui/columbus/sensors/Highpass3C;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/Highpass3C;->setPara(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->getPeakDetector()Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    move-result-object v0

    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->setMinNoiseTolerate(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->getPeakDetector()Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->setWindowSize(I)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->getValleyDetection()Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    move-result-object v0

    const v3, 0x3c75c28f    # 0.015f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->setMinNoiseTolerate(F)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/TapRT;->getValleyDetection()Lcom/google/android/systemui/columbus/sensors/PeakDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/sensors/PeakDetector;->setWindowSize(I)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/sensors/TapRT;

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/columbus/sensors/TapRT;->reset(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->setListening(ZI)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
