.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field private static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field private static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .locals 28

    move-object/from16 v0, p2

    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v15

    nop

    const-string v1, "AmbientBrightnessFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v16

    nop

    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v14

    nop

    const-string v1, "AmbientColorTemperatureFilter"

    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v18

    const v1, 0x1070040

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v19

    const v1, 0x107003f

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v20

    const v1, 0x10500af

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v21

    const v1, 0x107003d

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v22

    const v1, 0x107003c

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v23

    const v1, 0x10500ae

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v24

    const v1, 0x1070036

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v25

    const v1, 0x1070039

    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v26

    new-instance v27, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object/from16 v1, v27

    move-object v2, v15

    move-object/from16 v3, v16

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v13, v25

    move-object v0, v14

    move-object/from16 v14, v26

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F)V

    invoke-virtual {v15, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    return-object v1
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .locals 2

    const v0, 0x10e004d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v1
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .locals 3

    const v0, 0x1040234

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v2
.end method

.method private static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .locals 12

    const v0, 0x10e0053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x10e0054

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v1, 0x1070037

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    const v1, 0x107003e

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    const v1, 0x1070038

    invoke-static {p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    new-instance v11, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-object v1, v11

    move v2, v0

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object v11
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method
