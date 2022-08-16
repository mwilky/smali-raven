.class public final Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;
.super Ljava/lang/Object;
.source "AmbientLightModeMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;,
        Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final algorithm:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

.field public final lightSensor:Landroid/hardware/Sensor;

.field public final mSensorEventListener:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;

.field public final sensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "AmbientLightModeMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->algorithm:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->sensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->lightSensor:Landroid/hardware/Sensor;

    new-instance p1, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;-><init>(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->mSensorEventListener:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;

    return-void
.end method
