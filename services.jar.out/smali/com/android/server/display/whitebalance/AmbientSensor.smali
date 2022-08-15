.class public abstract Lcom/android/server/display/whitebalance/AmbientSensor;
.super Ljava/lang/Object;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;,
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    }
.end annotation


# instance fields
.field public mEnabled:Z

.field public mEventsCount:I

.field public mEventsHistory:Lcom/android/server/display/utils/History;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Landroid/hardware/SensorEventListener;

.field public mLoggingEnabled:Z

.field public mRate:I

.field public mSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleNewEvent(Lcom/android/server/display/whitebalance/AmbientSensor;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->handleNewEvent(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/whitebalance/AmbientSensor$1;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor;)V

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-static {p2, p3, p4}, Lcom/android/server/display/whitebalance/AmbientSensor;->validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    iput-object p2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    iput p4, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    iput p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    new-instance p1, Lcom/android/server/display/utils/History;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    return-void
.end method

.method public static validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .locals 1

    const-string v0, "handler cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p0, "sensorManager cannot be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rate must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final disable()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    iput v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->stopListening()V

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensorManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->startListening()V

    return v0
.end method

.method public final handleNewEvent(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle new event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/History;->add(F)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->update(F)V

    return-void
.end method

.method public setEnabled(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->enable()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->disable()Z

    move-result p0

    return p0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final startListening()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method public final stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public abstract update(F)V
.end method
