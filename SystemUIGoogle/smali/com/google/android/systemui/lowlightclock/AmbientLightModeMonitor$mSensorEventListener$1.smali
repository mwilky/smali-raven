.class public final Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;
.super Ljava/lang/Object;
.source "AmbientLightModeMonitor.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;-><init>(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;->this$0:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "AmbientLightModeMonitor"

    const-string p1, "SensorEvent doesn\'t have any value"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;->this$0:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->algorithm:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

    aget p1, p1, v1

    invoke-interface {p0, p1}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;->onUpdateLightSensorEvent(F)V

    return-void
.end method
