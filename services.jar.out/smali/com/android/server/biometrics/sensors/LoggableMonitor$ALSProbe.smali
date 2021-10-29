.class Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/LoggableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ALSProbe"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;Lcom/android/server/biometrics/sensors/LoggableMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;-><init>(Lcom/android/server/biometrics/sensors/LoggableMonitor;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$100(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LoggableMonitor$ALSProbe;->this$0:Lcom/android/server/biometrics/sensors/LoggableMonitor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$000(Lcom/android/server/biometrics/sensors/LoggableMonitor;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor;->access$100(Lcom/android/server/biometrics/sensors/LoggableMonitor;Landroid/hardware/Sensor;)V

    return-void
.end method
