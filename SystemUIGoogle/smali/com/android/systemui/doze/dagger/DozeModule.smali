.class public abstract Lcom/android/systemui/doze/dagger/DozeModule;
.super Ljava/lang/Object;
.source "DozeModule.java"


# direct methods
.method static providesBrightnessSensors(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)[Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ")[",
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->brightnessNames()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Optional;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/util/Optional;

    sget v0, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    aput-object p0, p2, v1

    return-object p2
.end method

.method static providesDozeMachinePartes(Lcom/android/systemui/doze/DozePauser;Lcom/android/systemui/doze/DozeFalsingManagerAdapter;Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeUi;Lcom/android/systemui/doze/DozeScreenState;Lcom/android/systemui/doze/DozeScreenBrightness;Lcom/android/systemui/doze/DozeWallpaperState;Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeAuthRemover;)[Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/doze/DozeMachine$Part;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    return-object v0
.end method

.method static providesDozeWakeLock(Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    move-result-object p0

    const-string p1, "Doze"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object p0

    return-object p0
.end method

.method static providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    invoke-static {v0, p2}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object p0

    return-object p0
.end method
