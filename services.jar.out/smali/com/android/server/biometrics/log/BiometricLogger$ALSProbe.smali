.class public Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;
.super Ljava/lang/Object;
.source "BiometricLogger.java"

# interfaces
.implements Lcom/android/server/biometrics/log/Probe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/log/BiometricLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ALSProbe"
.end annotation


# instance fields
.field public mDestroyed:Z

.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->this$0:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->mDestroyed:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;-><init>(Lcom/android/server/biometrics/log/BiometricLogger;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->disable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->this$0:Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/log/BiometricLogger;->-$$Nest$msetLightSensorLoggingEnabled(Lcom/android/server/biometrics/log/BiometricLogger;Landroid/hardware/Sensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger$ALSProbe;->this$0:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->-$$Nest$fgetmSensorManager(Lcom/android/server/biometrics/log/BiometricLogger;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricLogger;->getAmbientLightSensor(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/log/BiometricLogger;->-$$Nest$msetLightSensorLoggingEnabled(Lcom/android/server/biometrics/log/BiometricLogger;Landroid/hardware/Sensor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
